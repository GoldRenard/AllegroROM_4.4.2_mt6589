.class public Lcom/mediatek/settings/ext/DefaultWifiSettingsExt;
.super Ljava/lang/Object;
.source "DefaultWifiSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWifiSettingsExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiSettingsExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCategories(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 78
    return-void
.end method

.method public addPreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;ILjava/lang/String;I)V
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "flag"    # I
    .param p4, "ssid"    # Ljava/lang/String;
    .param p5, "security"    # I

    .prologue
    .line 70
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 71
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 74
    :cond_0
    return-void
.end method

.method public adjustPriority()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public disconnect(I)V
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 66
    return-void
.end method

.method public emptyCategory(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 45
    return-void
.end method

.method public emptyScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 48
    return-void
.end method

.method public getAccessPointsCount(Landroid/preference/PreferenceScreen;)I
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public getPreferenceCategory(Landroid/preference/PreferenceScreen;)Ljava/util/List;
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "preferenceCategoryList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceGroup;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-object v0
.end method

.method public isCatogoryExist()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public isTustAP(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "security"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public recordPriority(I)V
    .locals 0
    .param p1, "selectPriority"    # I

    .prologue
    .line 60
    return-void
.end method

.method public refreshCategory(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 53
    return-void
.end method

.method public registerPriorityObserver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 25
    return-void
.end method

.method public setCategory(Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1, "trustPref"    # Landroid/preference/PreferenceCategory;
    .param p2, "configedPref"    # Landroid/preference/PreferenceCategory;
    .param p3, "newPref"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 42
    return-void
.end method

.method public setLastConnectedConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 29
    return-void
.end method

.method public setLastPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 31
    return-void
.end method

.method public setNewPriority(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 62
    return-void
.end method

.method public shouldAddDisconnectMenu()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAddForgetMenu(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "security"    # I

    .prologue
    .line 21
    const-string v0, "DefaultWifiSettingsExt"

    const-string v1, "WifiSettingsExt, shouldAddMenuForget(),return true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterPriorityObserver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 27
    return-void
.end method

.method public updatePriority()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public updatePriorityAfterConnect(I)V
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 68
    return-void
.end method

.method public updatePriorityAfterSubmit(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 64
    return-void
.end method
