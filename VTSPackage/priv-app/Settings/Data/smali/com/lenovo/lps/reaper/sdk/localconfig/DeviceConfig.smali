.class public Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceConfig"


# instance fields
.field private assignedDeviceId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private country:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceIdType:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private hasPermissionForExternalStorage:Z

.field private hasPermissionForSystemSetting:Z

.field private imsi:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private manufacture:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private resolution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkPermissionForSaveAssignedDeviceId()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 228
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 229
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "packageName":Ljava/lang/String;
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 232
    .local v2, "permissionForExternalStorage":I
    const-string v4, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 234
    .local v3, "permissionForSystemSetting":I
    if-nez v2, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->hasPermissionForExternalStorage:Z

    .line 235
    if-nez v3, :cond_1

    :goto_1
    iput-boolean v5, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->hasPermissionForSystemSetting:Z

    .line 236
    return-void

    :cond_0
    move v4, v6

    .line 234
    goto :goto_0

    :cond_1
    move v5, v6

    .line 235
    goto :goto_1
.end method

.method private parseAssignedDeviceIdFromCustomDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "custonDeviceId"    # Ljava/lang/String;

    .prologue
    .line 207
    if-nez p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const-string v1, "\u0001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 214
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->assignedDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method private replaceInvalidCharacter()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->osVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->osVersion:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceModel:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceModel:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->manufacture:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->manufacture:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->resolution:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->resolution:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->language:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->language:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->country:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->country:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_6
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceId:Ljava/lang/String;

    .line 225
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->osVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceModel:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->manufacture:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->resolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->country:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 224
    :cond_6
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private saveCustomDeviceIdInStorage(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string v0, "DeviceConfig"

    const-string v1, "saving device id into storage."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->hasPermissionForExternalStorage:Z

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "/LenovoReaper/did"

    invoke-static {v0, p1}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->writeSDCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "DeviceConfig"

    const-string v1, "saved device id into storage."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method

.method private saveCustomDeviceIdInSystemSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "customDeviceId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 178
    const-string v3, "DeviceConfig"

    const-string v4, "save device id into system settings."

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ReaperAssignedDeviceId"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "deviceIdInSystem":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 195
    .end local v0    # "deviceIdInSystem":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 184
    .restart local v0    # "deviceIdInSystem":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    move-object v0, v2

    .line 185
    goto :goto_0

    .line 188
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ReaperAssignedDeviceId"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 190
    goto :goto_0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "se":Ljava/lang/SecurityException;
    const-string v3, "DeviceConfig"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "se":Ljava/lang/SecurityException;
    :cond_2
    move-object v0, v2

    .line 195
    goto :goto_0
.end method


# virtual methods
.method public getAssignedDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->assignedDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->manufacture:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public hasPermissionForExternalStorage()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->hasPermissionForExternalStorage:Z

    return v0
.end method

.method public hasPermissionForSaveAssignedDeviceId()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->hasPermissionForExternalStorage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->hasPermissionForSystemSetting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->context:Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 90
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->resolution:Ljava/lang/String;

    .line 96
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 97
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->imsi:Ljava/lang/String;

    .line 98
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->phoneNumber:Ljava/lang/String;

    .line 99
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->phoneNumber:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 100
    const-string v4, "0"

    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->initialDeviceIdentify(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceIdType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceIdType:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceId:Ljava/lang/String;

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->locale:Ljava/util/Locale;

    .line 115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, ""

    :goto_1
    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->country:Ljava/lang/String;

    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "en"

    :goto_2
    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->language:Ljava/lang/String;

    .line 121
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->osVersion:Ljava/lang/String;

    .line 124
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceModel:Ljava/lang/String;

    .line 127
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->manufacture:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->replaceInvalidCharacter()V

    .line 130
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->checkPermissionForSaveAssignedDeviceId()V

    .line 132
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    const-string v4, "DeviceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceIdType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->resolution:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->osVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->country:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->language:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->deviceModel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->manufacture:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    return-void

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DeviceConfig"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 118
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public saveAssignedDeviceId(Ljava/lang/String;)V
    .locals 3
    .param p1, "assignedDeviceId"    # Ljava/lang/String;

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "customDeviceId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->saveCustomDeviceIdInSystemSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->parseAssignedDeviceIdFromCustomDeviceId(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->saveCustomDeviceIdInStorage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synAssignedDeviceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "customDeviceIdFromSystemSettings"    # Ljava/lang/String;
    .param p2, "customDeviceIdFromStorage"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "customDeviceId":Ljava/lang/String;
    if-nez p1, :cond_3

    .line 149
    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-direct {p0, p2}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->saveCustomDeviceIdInSystemSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 159
    move-object v0, p1

    .line 161
    :cond_1
    if-eqz v0, :cond_2

    .line 162
    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->parseAssignedDeviceIdFromCustomDeviceId(Ljava/lang/String;)V

    .line 164
    :cond_2
    return-void

    .line 154
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    :cond_4
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->saveCustomDeviceIdInStorage(Ljava/lang/String;)V

    goto :goto_0
.end method
