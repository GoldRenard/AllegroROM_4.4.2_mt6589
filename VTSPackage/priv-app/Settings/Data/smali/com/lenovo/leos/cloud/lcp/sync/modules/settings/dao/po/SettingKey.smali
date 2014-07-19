.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;
.super Ljava/lang/Enum;
.source "SettingKey.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;",
        ">;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum accelerometerRotation:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum bluetoothDiscoverability:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum bluetoothDiscoverabilityTimeout:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum bluetoothOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum levoiceEnableHome:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum levoiceEnablePower:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum mtkAudioprofileActive:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum ringtone:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum ringtone2:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum screenBrightness:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum sideKeyBacklight:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum smartCallAnswer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum smartRoll:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum smsNotifiSound:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum swingLockEnabled:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum vibrateWhenRinging:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeAlarm:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeBluetoothSco:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeMusic:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeNotification:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeRing:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeSystem:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum volumeVoice:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum wideTouch:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

.field public static final enum wifiOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;


# instance fields
.field private key:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 7
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "wifiOn"

    const-string v2, "wifi_on"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->wifiOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 8
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "bluetoothOn"

    const-string v2, "bluetooth_on"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 9
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "bluetoothDiscoverability"

    const-string v2, "bluetooth_discoverability"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothDiscoverability:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 10
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "bluetoothDiscoverabilityTimeout"

    const-string v2, "bluetooth_discoverability_timeout"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothDiscoverabilityTimeout:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 11
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "ringtone"

    const/4 v2, 0x4

    .line 12
    const-string v3, "ringtone"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->ringtone:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 13
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "ringtone2"

    .line 14
    const-string v2, "ringtone_2"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->ringtone2:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 15
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "smsNotifiSound"

    const/4 v2, 0x6

    .line 16
    const-string v3, "sms_notifi_sound"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smsNotifiSound:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 17
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeMusic"

    const/4 v2, 0x7

    .line 18
    const-string v3, "volume_music"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeMusic:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 19
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeRing"

    const/16 v2, 0x8

    const-string v3, "volume_ring"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeRing:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 20
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeSystem"

    const/16 v2, 0x9

    const-string v3, "volume_system"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeSystem:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 21
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeVoice"

    const/16 v2, 0xa

    const-string v3, "volume_voice"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeVoice:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 22
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeNotification"

    const/16 v2, 0xb

    const-string v3, "volume_notification"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeNotification:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 23
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeBluetoothSco"

    const/16 v2, 0xc

    const-string v3, "volume_bluetooth_sco"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeBluetoothSco:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 24
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "volumeAlarm"

    const/16 v2, 0xd

    const-string v3, "volume_alarm"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeAlarm:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 25
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "accelerometerRotation"

    const/16 v2, 0xe

    .line 26
    const-string v3, "accelerometer_rotation"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->accelerometerRotation:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 27
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "screenBrightness"

    const/16 v2, 0xf

    .line 28
    const-string v3, "screen_brightness"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->screenBrightness:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 29
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "mtkAudioprofileActive"

    const/16 v2, 0x10

    .line 30
    const-string v3, "mtk_audioprofile_active"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->mtkAudioprofileActive:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 31
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "vibrateWhenRinging"

    const/16 v2, 0x11

    .line 32
    const-string v3, "vibrate_when_ringing"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->vibrateWhenRinging:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 33
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "smartRoll"

    const/16 v2, 0x12

    .line 34
    const-string v3, "smart_roll"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smartRoll:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 35
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "wideTouch"

    const/16 v2, 0x13

    .line 36
    const-string v3, "wide_touch"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->wideTouch:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 37
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "swingLockEnabled"

    const/16 v2, 0x14

    .line 38
    const-string v3, "swing_lock_enabled"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->swingLockEnabled:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 39
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "smartCallAnswer"

    const/16 v2, 0x15

    .line 40
    const-string v3, "smart_call_answer"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smartCallAnswer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 41
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "levoiceEnableHome"

    const/16 v2, 0x16

    .line 42
    const-string v3, "levoice_enable_home"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->levoiceEnableHome:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 43
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "levoiceEnablePower"

    const/16 v2, 0x17

    .line 44
    const-string v3, "levoice_enable_power"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->levoiceEnablePower:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 45
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    const-string v1, "sideKeyBacklight"

    const/16 v2, 0x18

    .line 46
    const-string v3, "side_key_backlight"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->sideKeyBacklight:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .line 6
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->wifiOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothOn:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothDiscoverability:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->bluetoothDiscoverabilityTimeout:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->ringtone:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->ringtone2:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v1, v0, v5

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smsNotifiSound:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeMusic:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeRing:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeSystem:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeVoice:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeNotification:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeBluetoothSco:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->volumeAlarm:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->accelerometerRotation:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->screenBrightness:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->mtkAudioprofileActive:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->vibrateWhenRinging:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smartRoll:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->wideTouch:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->swingLockEnabled:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->smartCallAnswer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->levoiceEnableHome:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->levoiceEnablePower:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->sideKeyBacklight:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->key:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->type:I

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    array-length v1, v0

    new-array v2, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->type:I

    return v0
.end method
