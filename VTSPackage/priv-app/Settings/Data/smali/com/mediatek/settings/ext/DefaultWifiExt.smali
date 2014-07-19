.class public Lcom/mediatek/settings/ext/DefaultWifiExt;
.super Ljava/lang/Object;
.source "DefaultWifiExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWifiExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mediatek/settings/ext/DefaultWifiExt;->mContext:Landroid/content/Context;

    .line 27
    const-string v0, "DefaultWifiExt"

    const-string v1, "DefaultWifiExt"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method


# virtual methods
.method public closeSpinnerDialog()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public getApOrder(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .param p1, "currentSsid"    # Ljava/lang/String;
    .param p2, "currentSecurity"    # I
    .param p3, "otherSsid"    # Ljava/lang/String;
    .param p4, "otherSecurity"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, -0x1

    return v0
.end method

.method public getPriorityView()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecurityText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "security"    # Ljava/lang/String;

    .prologue
    .line 60
    return-object p1
.end method

.method public getSleepPolicy(Landroid/content/ContentResolver;)I
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 86
    const/4 v0, 0x2

    .line 90
    .local v0, "default_sleep_policy":I
    const/4 v0, 0x3

    .line 93
    const-string v1, "wifi_sleep_policy"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSwitchState()Z
    .locals 2

    .prologue
    .line 35
    const-string v0, "DefaultWifiExt"

    const-string v1, "getSwitchState(), return true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public getWifiApSsid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultWifiExt;->mContext:Landroid/content/Context;

    const v1, 0x1040436

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/mediatek/settings/ext/IWifiExt$Builder;

    .prologue
    .line 109
    return-void
.end method

.method public initConnectView(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 75
    return-void
.end method

.method public initNetworkInfoView(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 78
    return-void
.end method

.method public initPreference(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 82
    return-void
.end method

.method public initSwitchState(Landroid/widget/Switch;)V
    .locals 0
    .param p1, "tempSwitch"    # Landroid/widget/Switch;

    .prologue
    .line 39
    return-void
.end method

.method public refreshNetworkInfoView()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public registerAirplaneModeObserver(Landroid/widget/Switch;)V
    .locals 0
    .param p1, "tempSwitch"    # Landroid/widget/Switch;

    .prologue
    .line 31
    return-void
.end method

.method public setAPNetworkId(I)V
    .locals 0
    .param p1, "apNetworkId"    # I

    .prologue
    .line 50
    return-void
.end method

.method public setAPPriority(I)V
    .locals 0
    .param p1, "apPriority"    # I

    .prologue
    .line 52
    return-void
.end method

.method public setProxyText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 72
    return-void
.end method

.method public setSecurityText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 58
    return-void
.end method

.method public setSleepPolicyPreference(Landroid/preference/ListPreference;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "sleepPolicyPref"    # Landroid/preference/ListPreference;
    .param p2, "sleepPolicyEntries"    # [Ljava/lang/String;
    .param p3, "sleepPolicyValues"    # [Ljava/lang/String;

    .prologue
    .line 106
    return-void
.end method

.method public shouldAddForgetButton(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "security"    # I

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSetDisconnectButton()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public unRegisterAirplaneObserver()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
