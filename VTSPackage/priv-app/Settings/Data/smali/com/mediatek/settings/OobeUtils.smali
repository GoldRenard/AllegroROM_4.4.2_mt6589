.class public Lcom/mediatek/settings/OobeUtils;
.super Ljava/lang/Object;
.source "OobeUtils.java"


# static fields
.field private static final EXTRA_IS_OOBE:Ljava/lang/String; = "extra_is_oobe"

.field private static final EXTRA_OOBE_SETTINGS:Ljava/lang/String; = "extra_oobe_settings"

.field private static final ID_DEFAULT_SIM_SETTINGS:I = 0x4

.field private static final ID_SIM_INFO_EDITOR:I = 0xb

.field private static final ID_SIM_INFO_SETTINGS:I = 0x3

.field private static final ID_ZONE_PICKER:I = 0xa

.field private static final KEY_DEFAULT_SIM_SETTINGS_CATEGORY:Ljava/lang/String; = "default_sim"

.field private static final KEY_GENERAL_SETTINGS_CATEGORY:Ljava/lang/String; = "general_settings"

.field private static final KEY_SIM_INFO_CATEGORY:Ljava/lang/String; = "sim_info"

.field private static final KEY_SIM_STATUS:Ljava/lang/String; = "status_info"

.field private static final OOBE_BASIC_STEP_INDEX:Ljava/lang/String; = "oobe_step_index"

.field private static final OOBE_BASIC_STEP_TOTAL:Ljava/lang/String; = "oobe_step_total"

.field private static final TAG:Ljava/lang/String; = "OobeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWifiSwitch(Lcom/android/settings/SettingsPreferenceFragment;Landroid/view/View;Lcom/android/settings/wifi/WifiEnabler;)Lcom/android/settings/wifi/WifiEnabler;
    .locals 7
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enalber"    # Lcom/android/settings/wifi/WifiEnabler;

    .prologue
    const/4 v6, 0x0

    .line 125
    move-object v3, p2

    .line 126
    .local v3, "wifiEnabler":Lcom/android/settings/wifi/WifiEnabler;
    invoke-static {p0}, Lcom/mediatek/settings/OobeUtils;->isOobeMode(Lcom/android/settings/SettingsPreferenceFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    const v5, 0x7f0b028d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 128
    .local v2, "titleLayout":Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_0

    .line 129
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    const v5, 0x7f0b0371

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "switchView":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v5, 0x1010004

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    .line 134
    .local v4, "wifiSwitch":Landroid/widget/Switch;
    new-instance v3, Lcom/android/settings/wifi/WifiEnabler;

    .end local v3    # "wifiEnabler":Lcom/android/settings/wifi/WifiEnabler;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 136
    .restart local v3    # "wifiEnabler":Lcom/android/settings/wifi/WifiEnabler;
    const v5, 0x7f0b0291

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "addApView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 138
    invoke-static {p0, v0, v6}, Lcom/mediatek/settings/OobeUtils;->setEnabledStateOnViews(Lcom/android/settings/SettingsPreferenceFragment;Landroid/view/View;Z)V

    .line 141
    .end local v0    # "addApView":Landroid/view/View;
    .end local v1    # "switchView":Landroid/view/View;
    .end local v2    # "titleLayout":Landroid/widget/RelativeLayout;
    .end local v4    # "wifiSwitch":Landroid/widget/Switch;
    :cond_1
    return-object v3
.end method

.method public static getSimInfoExtra(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/os/Bundle;
    .locals 4
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "extra_is_oobe"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    :cond_0
    return-object v0
.end method

.method public static isOobeMode(Lcom/android/settings/SettingsPreferenceFragment;)Z
    .locals 4
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "isOobe":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_is_oobe"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 149
    :cond_0
    return v0
.end method

.method public static setEnabledStateOnViews(Lcom/android/settings/SettingsPreferenceFragment;Landroid/view/View;Z)V
    .locals 6
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 159
    invoke-static {p0}, Lcom/mediatek/settings/OobeUtils;->isOobeMode(Lcom/android/settings/SettingsPreferenceFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0b0292

    if-ne v3, v4, :cond_0

    move-object v1, p1

    .line 162
    check-cast v1, Landroid/widget/ImageView;

    .line 163
    .local v1, "image":Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    .line 164
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 169
    .end local v1    # "image":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 170
    check-cast v2, Landroid/view/ViewGroup;

    .line 171
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 172
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/mediatek/settings/OobeUtils;->setEnabledStateOnViews(Lcom/android/settings/SettingsPreferenceFragment;Landroid/view/View;Z)V

    .line 171
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 166
    .end local v0    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    .restart local v1    # "image":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, -0x777778

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 176
    .end local v1    # "image":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method public static setSimInfoView(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 4
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extra_is_oobe"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "status_info"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 100
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method public static setSimView(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;)V
    .locals 5
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    const-string v3, "extra_is_oobe"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    const-string v3, "OobeUtils"

    const-string v4, "EXTRA_IS_OOBE"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "group":Landroid/preference/PreferenceGroup;
    const-string v3, "extra_oobe_settings"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 51
    .local v2, "stepId":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 52
    const-string v3, "default_sim"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 56
    .restart local v1    # "group":Landroid/preference/PreferenceGroup;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    :cond_1
    const-string v3, "general_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 61
    .local v0, "generalSettings":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 65
    .end local v0    # "generalSettings":Landroid/preference/PreferenceGroup;
    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    .end local v2    # "stepId":I
    :cond_2
    return-void

    .line 53
    .restart local v1    # "group":Landroid/preference/PreferenceGroup;
    .restart local v2    # "stepId":I
    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 54
    const-string v3, "sim_info"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    check-cast v1, Landroid/preference/PreferenceGroup;

    .restart local v1    # "group":Landroid/preference/PreferenceGroup;
    goto :goto_0
.end method

.method public static startSimEditor(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 69
    .local v6, "activity":Landroid/app/Activity;
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_oobe"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/mediatek/settings/SetupWizardForOobe;

    invoke-direct {v7, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "extra_is_oobe"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string v0, "extra_oobe_settings"

    const/16 v1, 0xb

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v0, "oobe_step_total"

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "oobe_step_total"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v0, "oobe_step_index"

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "oobe_step_index"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {v7, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v6, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 79
    const v0, 0x7f050002

    const v1, 0x7f050001

    invoke-virtual {v6, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 85
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 81
    :cond_0
    const-class v0, Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const v5, 0x7f090201

    move-object v0, p0

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 83
    const-string v0, "OobeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startTimeZone(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 8
    .param p0, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 108
    .local v6, "i":Landroid/content/Intent;
    const-string v0, "extra_is_oobe"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/mediatek/settings/SetupWizardForOobe;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "extra_is_oobe"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const-string v0, "extra_oobe_settings"

    const/16 v1, 0xa

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v0, "oobe_step_total"

    const-string v1, "oobe_step_total"

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v0, "oobe_step_index"

    const-string v1, "oobe_step_index"

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050002

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 121
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 118
    :cond_0
    const-class v0, Lcom/android/settings/ZonePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0x7f09051a

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0
.end method
