.class public interface abstract Lcom/mediatek/settings/ext/IApnSettingsExt;
.super Ljava/lang/Object;
.source "IApnSettingsExt.java"


# virtual methods
.method public abstract addApnTypeExtra(Landroid/content/Intent;)V
.end method

.method public abstract addMenu(Landroid/view/Menu;Landroid/app/Activity;IILjava/lang/String;)V
.end method

.method public abstract addPreference(ILandroid/preference/PreferenceScreen;)V
.end method

.method public abstract customizeApnProjection([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract customizeApnTitles(ILandroid/preference/PreferenceScreen;)V
.end method

.method public abstract customizeQueryResult(Landroid/app/Activity;Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract customizeTetherApnSettings(Landroid/preference/PreferenceScreen;)V
.end method

.method public abstract getApnTypeArray(Landroid/content/Context;IZ)[Ljava/lang/String;
.end method

.method public abstract getBroadcastReceiver(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
.end method

.method public abstract getFillListQuery(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getIntentFilter()Landroid/content/IntentFilter;
.end method

.method public abstract getRestoreCarrierUri(I)Landroid/net/Uri;
.end method

.method public abstract getScreenEnableState(ILandroid/app/Activity;)Z
.end method

.method public abstract getUriFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
.end method

.method public abstract initTetherField(Landroid/app/Activity;)V
.end method

.method public abstract isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract isSelectable(Ljava/lang/String;)Z
.end method

.method public abstract isSkipApn(Ljava/lang/String;Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;)Z
.end method

.method public abstract saveApnValues(Landroid/content/ContentValues;)V
.end method

.method public abstract setApnTypePreferenceState(Landroid/preference/Preference;)V
.end method

.method public abstract setMVNOPreferenceState(Landroid/preference/Preference;)V
.end method

.method public abstract setPreferenceTextAndSummary(ILjava/lang/String;)V
.end method

.method public abstract updateFieldsStatus(ILandroid/preference/PreferenceScreen;)V
.end method

.method public abstract updateTetherState(Landroid/app/Activity;)V
.end method
