.class public interface abstract Lcom/mediatek/settings/ext/ISettingsMiscExt;
.super Ljava/lang/Object;
.source "ISettingsMiscExt.java"


# virtual methods
.method public abstract addCustomizedItem(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract customizeHeaderIcon(Landroid/widget/ImageView;Landroid/preference/PreferenceActivity$Header;)V
.end method

.method public abstract customizeLocationHeaderClick(Landroid/preference/PreferenceActivity$Header;)V
.end method

.method public abstract customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getTetherWifiSSID(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract initCustomizedLocationSettings(Landroid/preference/PreferenceScreen;I)V
.end method

.method public abstract isWifiToggleCouldDisabled(Landroid/content/Context;)Z
.end method

.method public abstract needCustomizeHeaderIcon(Landroid/preference/PreferenceActivity$Header;)Z
.end method

.method public abstract setFactoryResetTitle(Ljava/lang/Object;)V
.end method

.method public abstract setTimeoutPrefTitle(Landroid/preference/Preference;)V
.end method

.method public abstract updateCustomizedLocationSettings()V
.end method
