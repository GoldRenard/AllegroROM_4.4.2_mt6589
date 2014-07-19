.class public Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;
.super Landroid/preference/PreferenceActivity;
.source "ImeiInfoGemini.java"


# static fields
.field private static final CDMA:Ljava/lang/String; = "CDMA"

.field private static final KEY_IMEI_SLOT1:Ljava/lang/String; = "imei_slot1"

.field private static final KEY_IMEI_SLOT2:Ljava/lang/String; = "imei_slot2"

.field private static final KEY_IMEI_SLOT3:Ljava/lang/String; = "imei_slot3"

.field private static final KEY_IMEI_SV_SLOT1:Ljava/lang/String; = "imei_sv_slot1"

.field private static final KEY_IMEI_SV_SLOT2:Ljava/lang/String; = "imei_sv_slot2"

.field private static final KEY_IMEI_SV_SLOT3:Ljava/lang/String; = "imei_sv_slot3"

.field private static final KEY_MEID_NUMBER_SLOT1:Ljava/lang/String; = "meid_number_slot1"

.field private static final KEY_MEID_NUMBER_SLOT2:Ljava/lang/String; = "meid_number_slot2"

.field private static final KEY_MEID_NUMBER_SLOT3:Ljava/lang/String; = "meid_number_slot3"

.field private static final KEY_MIN_NUMBER_SLOT1:Ljava/lang/String; = "min_number_slot1"

.field private static final KEY_MIN_NUMBER_SLOT2:Ljava/lang/String; = "min_number_slot2"

.field private static final KEY_MIN_NUMBER_SLOT3:Ljava/lang/String; = "min_number_slot3"

.field private static final KEY_PRL_VERSION_SLOT1:Ljava/lang/String; = "prl_version_slot1"

.field private static final KEY_PRL_VERSION_SLOT2:Ljava/lang/String; = "prl_version_slot2"

.field private static final KEY_PRL_VERSION_SLOT3:Ljava/lang/String; = "prl_version_slot3"

.field private static final TAG:Ljava/lang/String; = "ImeiInfoGemini"


# instance fields
.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mParent:Landroid/preference/PreferenceScreen;

.field private mRemovablePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-void
.end method

.method private removePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "imeiKey"    # Ljava/lang/String;
    .param p2, "imeiSvKey"    # Ljava/lang/String;
    .param p3, "meidNumberKey"    # Ljava/lang/String;
    .param p4, "minNumberKey"    # Ljava/lang/String;
    .param p5, "prlVersionKey"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 113
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 115
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 118
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 120
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 122
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    return-void
.end method

.method private setSlotStatus()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    .line 80
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 128
    .local v0, "p":Landroid/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090419

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showPreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "imeiKey"    # Ljava/lang/String;
    .param p3, "imeiSvKey"    # Ljava/lang/String;
    .param p4, "meidNumberKey"    # Ljava/lang/String;
    .param p5, "minNumberKey"    # Ljava/lang/String;
    .param p6, "prlVersionKey"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p6, v0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 92
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 94
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 101
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 103
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 105
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 46
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 48
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSlotStatus()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 54
    return-void
.end method
