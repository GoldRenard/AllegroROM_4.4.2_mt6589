.class public interface abstract Lcom/mediatek/settings/ext/ISimManagementExt;
.super Ljava/lang/Object;
.source "ISimManagementExt.java"


# virtual methods
.method public abstract customizeSimColorEditPreference(Landroid/preference/PreferenceFragment;Ljava/lang/String;)V
.end method

.method public abstract customizeSmsChoiceArray(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract customizeSmsChoiceValueArray(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract customizeVoiceChoiceArray(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract dealWithDataConnChanged(Landroid/content/Intent;Z)V
.end method

.method public abstract setToClosedSimSlot(I)V
.end method

.method public abstract showChangeDataConnDialog(Landroid/preference/PreferenceFragment;Z)V
.end method

.method public abstract updateDefaultSIMSummary(Landroid/preference/DialogPreference;Ljava/lang/Long;)V
.end method

.method public abstract updateSimEditorPref(Landroid/preference/PreferenceFragment;)V
.end method

.method public abstract updateSimManagementPref(Landroid/preference/PreferenceGroup;)V
.end method
