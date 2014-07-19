.class public Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AudioProfileSettingsLenovo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$EditprofileActivity;,
        Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$ActiveProfileChangeReceiver;
    }
.end annotation


# static fields
.field private static General_key:Ljava/lang/String;

.field private static Meeting_key:Ljava/lang/String;

.field private static Outdoor_key:Ljava/lang/String;

.field private static Silent_key:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCheckPreference:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

.field private mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mParent:Landroid/preference/PreferenceCategory;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "AudioProfileSettings"

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, "mtk_audioprofile_general"

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->General_key:Ljava/lang/String;

    .line 49
    const-string v0, "mtk_audioprofile_outdoor"

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->Outdoor_key:Ljava/lang/String;

    .line 50
    const-string v0, "mtk_audioprofile_silent"

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->Silent_key:Ljava/lang/String;

    .line 51
    const-string v0, "mtk_audioprofile_meeting"

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->Meeting_key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mParent:Landroid/preference/PreferenceCategory;

    .line 39
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mCheckPreference:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    .line 53
    new-instance v0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$1;-><init>(Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->updateActivePreference()V

    return-void
.end method

.method private updateActivePreference()V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mCheckPreference:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckDatabyKey(Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mCheckPreference:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    sget-object v2, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->General_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckDatabyKey(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "audioprofile"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 73
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 76
    const-string v0, "edit_profile_setting"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mParent:Landroid/preference/PreferenceCategory;

    .line 77
    const-string v0, "profile_checked_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mCheckPreference:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    .line 84
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 105
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 158
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "profileKey"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/audioprofile/EditprofileLenovo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 164
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->updateActivePreference()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 95
    return-void
.end method
