.class public final Lcom/android/settings/WiFiSwitchEnabler;
.super Ljava/lang/Object;
.source "WiFiSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final EXTRA_WIFI_SWITCH_STATE:Ljava/lang/String; = "wifi_switch_state"

.field private static final TAG:Ljava/lang/String; = "WiFiSwitchEnabler"

.field private static final WIFI_SWITCH_SETTING:Ljava/lang/String; = "wifi_switch_setting"

.field private static final WIFI_SWITCH_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.lenovo.wifiswitch.ACTION_STATE_CHANGED"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/WiFiSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/WiFiSwitchEnabler$1;-><init>(Lcom/android/settings/WiFiSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 62
    return-void
.end method

.method private static MSG_DEBUG(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "WiFiSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ WiFiSwitchEnabler ] :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method private static MSG_ERROR(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "WiFiSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ WiFiSwitchEnabler ] :: Error :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/WiFiSwitchEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WiFiSwitchEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/settings/WiFiSwitchEnabler;->handleStateChanged(I)V

    return-void
.end method

.method private handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStateChanged, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    .line 168
    packed-switch p1, :pswitch_data_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 182
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged, isChecked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    .line 151
    if-ne p2, v1, :cond_0

    .line 153
    .local v1, "state":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_switch_setting"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lenovo.wifiswitch.ACTION_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "wifi_switch_state"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 161
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "state":I
    :cond_0
    move v1, v2

    .line 151
    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "pause"

    invoke-static {v0}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/WiFiSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 7

    .prologue
    .line 66
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.wifi"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 90
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x1

    .line 74
    .local v0, "def_wifi_switch_setting":I
    const-string v3, "ro.operator.optr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "optr":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "OP01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->ROW_PRODUCT:Z

    if-eqz v3, :cond_3

    .line 77
    :cond_2
    const/4 v0, 0x0

    .line 80
    :cond_3
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_switch_setting"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 82
    .local v2, "state":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume, WiFi Switch Enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, v2}, Lcom/android/settings/WiFiSwitchEnabler;->handleStateChanged(I)V

    .line 86
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/WiFiSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.lenovo.wifiswitch.ACTION_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 112
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v3, p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    iput-object p1, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 119
    const/4 v0, 0x1

    .line 121
    .local v0, "def_wifi_switch_setting":I
    const-string v3, "ro.operator.optr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "optr":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "OP01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->ROW_PRODUCT:Z

    if-eqz v3, :cond_3

    .line 124
    :cond_2
    const/4 v0, 0x0

    .line 127
    :cond_3
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_switch_setting"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 129
    .local v2, "state":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSwitch, WiFi Switch Enable: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V

    .line 131
    iget-object v6, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v2, v4, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 133
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.wifi"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 135
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    :goto_2
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_4
    move v3, v5

    .line 131
    goto :goto_1

    .line 139
    :cond_5
    iget-object v3, p0, Lcom/android/settings/WiFiSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method
