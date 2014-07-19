.class public Lcom/mediatek/gemini/SelectSimCardFragment;
.super Lcom/mediatek/gemini/SimInfoPrefFragment;
.source "SelectSimCardFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectSimCardFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/mediatek/gemini/SimInfoPrefFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const-string v0, "SelectSimCardFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 27
    instance-of v5, p2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    if-eqz v5, :cond_0

    move-object v3, p2

    .line 28
    check-cast v3, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 29
    .local v3, "simInfoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v4

    .line 31
    .local v4, "slotId":I
    invoke-virtual {v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimInfoId()J

    move-result-wide v1

    .line 32
    .local v1, "simId":J
    const-string v5, "slotid"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    const-string v5, "simid"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 34
    const-string v5, "simId"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    const-string v5, "SelectSimCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick with slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and simid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 39
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f050002

    const v7, 0x7f050001

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 41
    const/4 v5, 0x1

    .line 43
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "simId":J
    .end local v3    # "simInfoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v4    # "slotId":I
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
