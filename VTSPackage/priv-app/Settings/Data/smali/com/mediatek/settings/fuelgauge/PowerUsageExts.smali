.class public Lcom/mediatek/settings/fuelgauge/PowerUsageExts;
.super Ljava/lang/Object;
.source "PowerUsageExts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/fuelgauge/PowerUsageExts$GetPowerSavingStatusTask;,
        Lcom/mediatek/settings/fuelgauge/PowerUsageExts$PowerSavingTASK;
    }
.end annotation


# static fields
.field private static final ACTION_BATTERY_PERCENTAGE_SWITCH:Ljava/lang/String; = "mediatek.intent.action.BATTERY_PERCENTAGE_SWITCH"

.field private static final CAT_POWER_SAVING_STATUS_COMMAND:Ljava/lang/String; = "cat /data/.tp.settings"

.field private static final DISABLE_POWER_SAVING_COMMAND:Ljava/lang/String; = "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

.field private static final ENABLE_POWER_SAVING_COMMAND:Ljava/lang/String; = "/system/bin/thermal_manager /etc/.tp/thermal.conf"

.field private static final H_CHECK_POWER_SAVING_MESSAGE:I = 0x2

.field private static final H_UNCHECK_POWER_SAVING_MESSAGE:I = 0x3

.field private static final KEY_BACKGROUND_POWER_SAVING:Ljava/lang/String; = "background_power_saving"

.field private static final KEY_BATTERY_PERCENTAGE:Ljava/lang/String; = "battery_percentage"

.field private static final KEY_CPU_DTM:Ljava/lang/String; = "cpu_dtm"

.field private static final MSG_UPDATE_NAME_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerUsageSummary"


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

.field private mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

.field private mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mPowerSavingPrf:Landroid/preference/CheckBoxPreference;

.field private mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appListGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/fuelgauge/PowerUsageExts$1;-><init>(Lcom/mediatek/settings/fuelgauge/PowerUsageExts;)V

    iput-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/fuelgauge/PowerUsageExts$2;-><init>(Lcom/mediatek/settings/fuelgauge/PowerUsageExts;)V

    iput-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 61
    invoke-static {p1}, Lcom/android/settings/Utils;->getBatteryExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IBatteryExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/fuelgauge/PowerUsageExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/fuelgauge/PowerUsageExts;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->setBatteryPercenVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/fuelgauge/PowerUsageExts;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/fuelgauge/PowerUsageExts;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPowerSavingPrf:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private setBatteryPercenVisibility()V
    .locals 5

    .prologue
    .line 77
    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 78
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v1

    .line 79
    .local v1, "isSmartBookPluggedIn":Z
    const-string v2, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smartbook plug:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eqz v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    #invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public initPowerUsageExtItems()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 114
    new-instance v1, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    .line 115
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    const-string v2, "battery_percentage"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    const v3, 0x7f09027b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 118
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_percentage"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 120
    .local v0, "enable":Z
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 121
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    #invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 122
    invoke-direct {p0}, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->setBatteryPercenVisibility()V

    .line 125
    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

    iget-object v2, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-interface {v1, v2, v3}, Lcom/mediatek/settings/ext/IBatteryExt;->loadPreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    .line 137
    return-void
.end method

.method public onPowerUsageExtItemsClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 141
    instance-of v6, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_7

    move-object v3, p2

    .line 142
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 143
    .local v3, "pref":Landroid/preference/CheckBoxPreference;
    const-string v6, "cpu_dtm"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v1, "/system/bin/thermal_manager /etc/.tp/thermal.conf"

    .line 145
    .local v1, "command":Ljava/lang/String;
    :goto_0
    const-string v6, "PowerUsageSummary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick : command is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v6, Lcom/mediatek/settings/fuelgauge/PowerUsageExts$PowerSavingTASK;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/mediatek/settings/fuelgauge/PowerUsageExts$PowerSavingTASK;-><init>(Lcom/mediatek/settings/fuelgauge/PowerUsageExts;Lcom/mediatek/settings/fuelgauge/PowerUsageExts$1;)V

    new-array v7, v5, [Ljava/lang/String;

    aput-object v1, v7, v4

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_0
    :goto_1
    return v5

    .line 144
    .restart local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_1
    const-string v1, "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

    goto :goto_0

    .line 147
    :cond_2
    const-string v6, "battery_percentage"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 148
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 149
    .local v4, "state":I
    :cond_3
    const-string v6, "PowerUsageSummary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "battery percentage state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_percentage"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    new-instance v2, Landroid/content/Intent;

    const-string v6, "mediatek.intent.action.BATTERY_PERCENTAGE_SWITCH"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "state"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_4

    .line 156
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatterrPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 159
    :cond_4
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 160
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "state":I
    :cond_5
    const-string v6, "background_power_saving"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 161
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    move v0, v5

    .line 162
    .local v0, "bgState":I
    :goto_2
    const-string v6, "PowerUsageSummary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "background power saving state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "background_power_saving_enable"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    .line 166
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBgPowerSavingPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    .end local v0    # "bgState":I
    :cond_6
    move v0, v4

    .line 161
    goto :goto_2

    .line 171
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_7
    iget-object v6, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mBatteryExt:Lcom/mediatek/settings/ext/IBatteryExt;

    invoke-interface {v6, p1, p2}, Lcom/mediatek/settings/ext/IBatteryExt;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    if-nez v6, :cond_0

    move v5, v4

    .line 174
    goto/16 :goto_1
.end method

.method public registerSmartBookReceiver()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SMARTBOOK_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method public unRegisterSmartBookReceiver()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    return-void
.end method
