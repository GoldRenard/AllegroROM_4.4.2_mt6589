.class public Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DeviceInfoSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfoSettingsMore"
.end annotation


# static fields
.field private static final FILENAME_MSV:Ljava/lang/String; = "/sys/board_properties/soc/msv"

.field private static final FILENAME_PROC_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final KEY_BASEBAND_VERSION:Ljava/lang/String; = "baseband_version"

.field private static final KEY_BASEBAND_VERSION_2:Ljava/lang/String; = "baseband_version_2"

.field private static final KEY_BUILD_NUMBER:Ljava/lang/String; = "build_number"

.field private static final KEY_CONTAINER:Ljava/lang/String; = "container"

.field private static final KEY_CONTRIBUTORS:Ljava/lang/String; = "contributors"

.field private static final KEY_COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final KEY_CUSTOM_BUILD_VERSION:Ljava/lang/String; = "custom_build_version"

.field private static final KEY_DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final KEY_DMSW_UPDATE:Ljava/lang/String; = "software_update"

.field private static final KEY_EQUIPMENT_ID:Ljava/lang/String; = "fcc_equipment_id"

.field private static final KEY_FIRMWARE_VERSION:Ljava/lang/String; = "firmware_version"

.field private static final KEY_KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field private static final KEY_LENOVO_EXP:Ljava/lang/String; = "lenovo_exp_checkbox"

.field private static final KEY_LENOVO_SYSTEM_UPDATE:Ljava/lang/String; = "lenovoOTA_system_update"

.field private static final KEY_LICENSE:Ljava/lang/String; = "license"

.field private static final KEY_MDM_FUMO:Ljava/lang/String; = "mdm_fumo"

.field private static final KEY_MDM_SCOMO:Ljava/lang/String; = "mdm_scomo"

.field private static final KEY_MORE_DEVICE_INFO:Ljava/lang/String; = "more_device_info"

.field private static final KEY_MTK_SYSTEM_UPDATE:Ljava/lang/String; = "mtk_system_update"

.field private static final KEY_PLAYERS_TUTORIAL:Ljava/lang/String; = "setting_wizard"

.field private static final KEY_REGULATORY_INFO:Ljava/lang/String; = "regulatory_info"

.field private static final KEY_SAFETY_INFORMATION:Ljava/lang/String; = "security_information"

.field private static final KEY_SAFETY_LEAGAL:Ljava/lang/String; = "safetylegal"

.field private static final KEY_SCOMO:Ljava/lang/String; = "scomo"

.field private static final KEY_SELINUX_STATUS:Ljava/lang/String; = "selinux_status"

.field private static final KEY_SOFTWARE_UPDATE:Ljava/lang/String; = "more_software_updates"

.field private static final KEY_STATUS_INFO:Ljava/lang/String; = "status_info"

.field private static final KEY_STATUS_INFO_GEMINI:Ljava/lang/String; = "status_info_gemini"

.field private static final KEY_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "system_update_settings"

.field private static final KEY_TEAM:Ljava/lang/String; = "team"

.field private static final KEY_TERMS:Ljava/lang/String; = "terms"

.field private static final KEY_UPDATE_SETTING:Ljava/lang/String; = "additional_system_update_settings"

.field private static final LOG_TAG:Ljava/lang/String; = "DeviceInfoSettingsMore"

.field private static final PROPERTY_BUILD_VERSION_CUSTOM:Ljava/lang/String; = "ro.custom.build.version"

.field private static final PROPERTY_EQUIPMENT_ID:Ljava/lang/String; = "ro.ril.fccid"

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

.field mHits:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mHits:[J

    .line 126
    return-void
.end method

.method private getExternalModemSlot()I
    .locals 5

    .prologue
    const v4, 0x7f090419

    .line 408
    const-string v2, "ril.external.md"

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "md":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    const/4 v1, 0x0

    .line 414
    .local v1, "modemSlot":I
    :goto_0
    return v1

    .line 412
    .end local v1    # "modemSlot":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "modemSlot":I
    goto :goto_0
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x4

    .line 351
    :try_start_0
    const-string v5, "/proc/version"

    invoke-direct {p0, v5}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "procVersionStr":Ljava/lang/String;
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 362
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v5, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 363
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 365
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 366
    const-string v5, "DeviceInfoSettingsMore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Regex did not match on /proc/version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v5, "Unavailable"

    .line 378
    .end local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "procVersionStr":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 368
    .restart local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "procVersionStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 369
    const-string v5, "DeviceInfoSettingsMore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Regex match on /proc/version only returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " groups"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v5, "Unavailable"

    goto :goto_0

    .line 372
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 375
    .end local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "procVersionStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "DeviceInfoSettingsMore"

    const-string v6, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    const-string v5, "Unavailable"

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 392
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-direct {p0, v1}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "msv":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 396
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v0    # "msv":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 400
    :catch_0
    move-exception v1

    .line 403
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 398
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 342
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 344
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private removePreference()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "system_update_settings"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 266
    const-string v0, "software_update"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 267
    const-string v0, "mdm_fumo"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 268
    const-string v0, "mtk_system_update"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 269
    const-string v0, "scomo"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 270
    const-string v0, "mdm_scomo"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 271
    const-string v0, "additional_system_update_settings"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 272
    const-string v0, "more_software_updates"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 273
    const-string v0, "status_info"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 274
    const-string v0, "status_info_gemini"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 275
    const-string v0, "container"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 276
    const-string v0, "safetylegal"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 277
    const-string v0, "regulatory_info"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 279
    const-string v0, "kernel_version"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 281
    const-string v0, "custom_build_version"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 282
    const-string v0, "selinux_status"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 283
    const-string v0, "more_device_info"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 284
    const-string v0, "security_information"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 286
    const-string v0, "lenovo_exp_checkbox"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 289
    const-string v0, "lenovoOTA_system_update"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 292
    const-string v0, "setting_wizard"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "device_info_phone_parambig"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    return-void
.end method

.method private removePreferenceIfExist(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettingsMore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 318
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090419

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 326
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090419

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateBasebandTitle()V
    .locals 7

    .prologue
    const v6, 0x7f09071a

    .line 418
    const v3, 0x7f09070f

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "basebandversion":Ljava/lang/String;
    const v3, 0x7f0901cd

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "slot1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    const v3, 0x7f0901cf

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "slot2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 436
    const-string v3, "baseband_version"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 437
    const-string v3, "baseband_version_2"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v5, 0x7f060016

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 134
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->getDeviceInfoSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    .line 138
    const-string v5, "build_number"

    invoke-virtual {p0, v5}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Ljava/lang/String;)V

    .line 140
    const-string v5, "firmware_version"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v5, "firmware_version"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 145
    const-string v0, "gsm.version.baseband"

    .line 146
    .local v0, "baseversion":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->getExternalModemSlot()I

    move-result v2

    .line 147
    .local v2, "modemSlot":I
    if-eqz v2, :cond_3

    move v1, v4

    .line 148
    .local v1, "hasExternalModem":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 149
    if-ne v2, v4, :cond_0

    .line 150
    const-string v0, "gsm.version.baseband.2"

    .line 153
    :cond_0
    const-string v5, "DeviceInfoSettingsMore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "baseversion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v5, "baseband_version"

    invoke-direct {p0, v5, v0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-eqz v1, :cond_4

    .line 157
    const-string v3, "gsm.version.baseband.2"

    .line 161
    .local v3, "version2":Ljava/lang/String;
    if-ne v2, v4, :cond_1

    .line 162
    const-string v3, "gsm.version.baseband"

    .line 165
    :cond_1
    const-string v5, "DeviceInfoSettingsMore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "version2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v5, "baseband_version_2"

    invoke-direct {p0, v5, v3}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->updateBasebandTitle()V

    .line 173
    .end local v3    # "version2":Ljava/lang/String;
    :goto_1
    const-string v5, "device_model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->getMsvSuffix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v5, "fcc_equipment_id"

    const-string v6, "ro.ril.fccid"

    invoke-direct {p0, v5, v6}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v5, "device_model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v5, "build_number"

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v5, "build_number"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 178
    const-string v4, "kernel_version"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    const-string v4, "custom_build_version"

    const-string v5, "ro.custom.build.version"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "fcc_equipment_id"

    const-string v6, "ro.ril.fccid"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "baseband_version"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->removePreference()V

    .line 193
    return-void

    .line 147
    .end local v1    # "hasExternalModem":Z
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 169
    .restart local v1    # "hasExternalModem":Z
    :cond_4
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "baseband_version_2"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 207
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 211
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firmware_version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mHits:[J

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mHits:[J

    iget-object v5, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mHits:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v2, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mHits:[J

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mHits:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 214
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mHits:[J

    aget-wide v2, v2, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 215
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android"

    const-class v3, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :cond_1
    return v2

    .line 219
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfoSettingsMore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "build_number"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_1

    .line 228
    iget v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitCountdown:I

    if-lez v3, :cond_7

    .line 229
    iget v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitCountdown:I

    if-ne v3, v2, :cond_3

    .line 230
    invoke-super {p0, p2}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 234
    :cond_3
    iget v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitCountdown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitCountdown:I

    .line 235
    iget v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitCountdown:I

    if-nez v3, :cond_5

    .line 236
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "development"

    invoke-virtual {v3, v4, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 238
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_4

    .line 239
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 241
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09041a

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    .line 242
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 243
    :cond_5
    iget v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitCountdown:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitCountdown:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 244
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_6

    .line 245
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 247
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f100000

    iget v6, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitCountdown:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitCountdown:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v8

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    .line 249
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 251
    :cond_7
    iget v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitCountdown:I

    if-gez v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_8

    .line 253
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 255
    :cond_8
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09041b

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    .line 256
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 198
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitCountdown:I

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettingsActivity$DeviceInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    .line 202
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
