.class final Lcom/android/server/lightadjust/SettingsCache$1;
.super Ljava/lang/Object;
.source "SettingsCache.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/SettingsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/server/lightadjust/SettingsCache;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/lightadjust/SettingsCache;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    new-instance v0, Lcom/android/server/lightadjust/SettingsCache;

    invoke-direct {v0}, Lcom/android/server/lightadjust/SettingsCache;-><init>()V

    .line 149
    .local v0, "c":Lcom/android/server/lightadjust/SettingsCache;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/android/server/lightadjust/SettingsCache;->profile_index:I
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->access$002(Lcom/android/server/lightadjust/SettingsCache;I)I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/android/server/lightadjust/SettingsCache;->profile_count:I
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->access$102(Lcom/android/server/lightadjust/SettingsCache;I)I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/android/server/lightadjust/SettingsCache;->backlight_adjust_policy:I
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->access$202(Lcom/android/server/lightadjust/SettingsCache;I)I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/android/server/lightadjust/SettingsCache;->sensor_sample_rate:I
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->access$302(Lcom/android/server/lightadjust/SettingsCache;I)I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/android/server/lightadjust/SettingsCache;->brightness_fade_speed:I
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->access$402(Lcom/android/server/lightadjust/SettingsCache;I)I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/android/server/lightadjust/SettingsCache;->brightness_step_size:I
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->access$502(Lcom/android/server/lightadjust/SettingsCache;I)I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    # setter for: Lcom/android/server/lightadjust/SettingsCache;->fade_brightness_changes:Z
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->access$602(Lcom/android/server/lightadjust/SettingsCache;Z)Z

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/android/server/lightadjust/SettingsCache;->minimum_brightness_value:I
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->access$702(Lcom/android/server/lightadjust/SettingsCache;I)I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/android/server/lightadjust/SettingsCache;->maximum_brightness_value:I
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->access$802(Lcom/android/server/lightadjust/SettingsCache;I)I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/android/server/lightadjust/SettingsCache;->bright_anti_shake_interval:I
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->access$902(Lcom/android/server/lightadjust/SettingsCache;I)I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/android/server/lightadjust/SettingsCache;->dark_anti_shake_interval:I
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->access$1002(Lcom/android/server/lightadjust/SettingsCache;I)I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    # setter for: Lcom/android/server/lightadjust/SettingsCache;->show_notification_controller_pannel:Z
    invoke-static {v0, v2}, Lcom/android/server/lightadjust/SettingsCache;->access$1102(Lcom/android/server/lightadjust/SettingsCache;Z)Z

    .line 161
    const-string v1, "zhangxj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSettings--read Parcel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-object v0

    :cond_0
    move v1, v3

    .line 155
    goto :goto_0

    :cond_1
    move v2, v3

    .line 160
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/lightadjust/SettingsCache$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/lightadjust/SettingsCache;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/server/lightadjust/SettingsCache;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 167
    new-array v0, p1, [Lcom/android/server/lightadjust/SettingsCache;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/lightadjust/SettingsCache$1;->newArray(I)[Lcom/android/server/lightadjust/SettingsCache;

    move-result-object v0

    return-object v0
.end method
