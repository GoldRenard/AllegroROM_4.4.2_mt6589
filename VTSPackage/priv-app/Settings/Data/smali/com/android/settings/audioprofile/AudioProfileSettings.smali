.class public Lcom/android/settings/audioprofile/AudioProfileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AudioProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/audioprofile/AudioProfileSettings$ResetTask;
    }
.end annotation


# static fields
.field private static final AUDIO_PROFILE_MENUID:Ljava/lang/String; = "audioprofilemenuid"

.field private static final CUSTOMCATEGORY:Ljava/lang/String; = "custom"

.field private static final DIALOG_DELETE:I = 0x3

.field private static final DIALOG_ERROR:I = 0x1

.field private static final DIALOG_NAME:I = 0x0

.field private static final DIALOG_RESET:I = 0x2

.field private static final ERROR_COUNT_OVERFLOW:I = 0x2

.field private static final ERROR_NAME_EXIST:I = 0x0

.field private static final ERROR_NAME_LENGTH:I = 0x1

.field private static final GENERAL_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_general"

.field private static final GET_BESLOUDNESS_STATUS:Ljava/lang/String; = "GetBesLoudnessStatus"

.field private static final GET_BESLOUDNESS_STATUS_ENABLED:Ljava/lang/String; = "GetBesLoudnessStatus=1"

.field private static final GET_MUSIC_PLUS_STATUS:Ljava/lang/String; = "GetMusicPlusStatus"

.field private static final GET_MUSIC_PLUS_STATUS_ENABLED:Ljava/lang/String; = "GetMusicPlusStatus=1"

.field private static final H_RESET_SUCCESS:I = 0xb

.field private static final IS_CMCC:Z

.field private static final KEY_BESLOUDNESS:Ljava/lang/String; = "bes_loudness"

.field private static final KEY_MUSIC_PLUS:Ljava/lang/String; = "music_plus"

.field private static final KEY_SOUND_ENAHCNE:Ljava/lang/String; = "sound_enhance"

.field private static final MEETING_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_meeting"

.field private static final MENUID_ADD:I = 0x1

.field private static final MENUID_DELETE:I = 0x4

.field private static final MENUID_ENABLE:I = 0x2

.field private static final MENUID_RENAME:I = 0x3

.field private static final MENUID_RESET:I = 0x2

.field private static final OPERATOR:Ljava/lang/String;

.field private static final OUTDOOR_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_outdoor"

.field private static final PREDEFINEDCATEGORY:Ljava/lang/String; = "predefine"

.field private static final SET_BESLOUDNESS_DISABLED:Ljava/lang/String; = "SetBesLoudnessStatus=0"

.field private static final SET_BESLOUDNESS_ENABLED:Ljava/lang/String; = "SetBesLoudnessStatus=1"

.field private static final SET_MUSIC_PLUS_DISABLED:Ljava/lang/String; = "SetMusicPlusStatus=0"

.field private static final SET_MUSIC_PLUS_ENABLED:Ljava/lang/String; = "SetMusicPlusStatus=1"

.field private static final SILENT_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_silent"

.field private static final SOUND_PREFERENCE_NULL_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioProfileSettings:"

.field private static final XLOGTAG:Ljava/lang/String; = "Settings/AudioP"


# instance fields
.field private mAudioEnhParent:Landroid/preference/PreferenceCategory;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBesLoudnessPref:Landroid/preference/CheckBoxPreference;

.field public mCurrentDialogId:I

.field private mCustomParent:Landroid/preference/PreferenceCategory;

.field private mCustomerExist:Z

.field private mCustomerProfilePrefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/audioprofile/AudioProfilePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultKey:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorType:I

.field private mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

.field private mGeneralPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mMenuId:I

.field private mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

.field private mPredefineParent:Landroid/preference/PreferenceCategory;

.field private mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private final mProfileSettingListener:Landroid/view/View$OnClickListener;

.field private mProfileTitle:[Ljava/lang/String;

.field private mRenameDialogtext:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "ro.lenovo.operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfileSettings;->OPERATOR:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfileSettings;->OPERATOR:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/audioprofile/AudioProfileSettings;->OPERATOR:Ljava/lang/String;

    const-string v1, "cmcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/audioprofile/AudioProfileSettings;->OPERATOR:Ljava/lang/String;

    const-string v1, "cmccopen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/audioprofile/AudioProfileSettings;->IS_CMCC:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 120
    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 123
    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 130
    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    .line 165
    new-instance v0, Lcom/android/settings/audioprofile/AudioProfileSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/AudioProfileSettings$1;-><init>(Lcom/android/settings/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 335
    new-instance v0, Lcom/android/settings/audioprofile/AudioProfileSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/AudioProfileSettings$3;-><init>(Lcom/android/settings/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    .line 729
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/audioprofile/AudioProfileSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfileSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/audioprofile/AudioProfileSettings;)Lcom/android/settings/audioprofile/AudioProfilePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfileSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfileSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/audioprofile/AudioProfileSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfileSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/android/settings/audioprofile/AudioProfilePreference;
    .locals 6
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 311
    .local v2, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    const/4 v1, 0x0

    .line 312
    .local v1, "preference":Lcom/android/settings/audioprofile/AudioProfilePreference;
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    new-instance v1, Lcom/android/settings/audioprofile/AudioProfilePreference;

    .end local v1    # "preference":Lcom/android/settings/audioprofile/AudioProfilePreference;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;)V

    .line 314
    .restart local v1    # "preference":Lcom/android/settings/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-virtual {v1, p2}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setProfileKey(Ljava/lang/String;)V

    .line 316
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:Add into profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-boolean v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    if-nez v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 321
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 325
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 328
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    .line 329
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settings/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private dynamicshowSummary()V
    .locals 3

    .prologue
    .line 364
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-virtual {v2}, Lcom/android/settings/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 365
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/audioprofile/AudioProfilePreference;

    .line 366
    .local v1, "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    invoke-virtual {v1}, Lcom/android/settings/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto :goto_0

    .line 368
    .end local v1    # "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    :cond_0
    return-void
.end method

.method private updateActivePreference()V
    .locals 5

    .prologue
    .line 350
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "key":Ljava/lang/String;
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfileSettings:key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/audioprofile/AudioProfilePreference;

    .line 354
    .local v0, "activePreference":Lcom/android/settings/audioprofile/AudioProfilePreference;
    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setChecked()V

    .line 357
    :cond_1
    return-void
.end method

.method private updatePreferenceHierarchy()V
    .locals 7

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 259
    .local v3, "root":Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllProfileKeys()Ljava/util/List;

    move-result-object v2

    .line 260
    .local v2, "profileKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 261
    const-string v4, "Settings/AudioP"

    const-string v5, "AudioProfileSettings:profileKey size is 0"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const-string v4, "Settings/AudioP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioProfileSettings:profileKey size"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 267
    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 268
    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    goto :goto_0

    .line 271
    :cond_2
    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 272
    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 273
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    .local v1, "profileKey":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/settings/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/android/settings/audioprofile/AudioProfilePreference;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 649
    const-string v3, "Settings/AudioP"

    const-string v4, "onClick"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 652
    const-string v3, "Settings/AudioP"

    const-string v4, "return"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    packed-switch v3, :pswitch_data_0

    .line 723
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:unrecongnized dialog id is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 657
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    if-nez v3, :cond_2

    const-string v2, ""

    .line 659
    .local v2, "title":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 660
    iput v7, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 661
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 657
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 662
    .restart local v2    # "title":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isNameExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 663
    iput v6, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 664
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 666
    :cond_4
    iget v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v7, :cond_6

    .line 667
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->addProfile()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "profileKey":Ljava/lang/String;
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:add profile Key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/settings/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/android/settings/audioprofile/AudioProfilePreference;

    move-result-object v0

    .line 673
    .local v0, "activePreference":Lcom/android/settings/audioprofile/AudioProfilePreference;
    if-nez v0, :cond_5

    .line 674
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 675
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setChecked()V

    goto/16 :goto_0

    .line 677
    :cond_5
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setChecked()V

    .line 679
    invoke-virtual {v0}, Lcom/android/settings/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto/16 :goto_0

    .line 684
    .end local v0    # "activePreference":Lcom/android/settings/audioprofile/AudioProfilePreference;
    .end local v1    # "profileKey":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 685
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-virtual {v3, v2, v7}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    .line 686
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfileSettings;->updatePreferenceHierarchy()V

    goto/16 :goto_0

    .line 688
    :cond_7
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPref="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 695
    .end local v2    # "title":Ljava/lang/String;
    :pswitch_1
    iget v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mErrorType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 696
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_0

    .line 700
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/android/settings/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 701
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 702
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setChecked()V

    .line 704
    :cond_8
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->deleteProfile(Ljava/lang/String;)Z

    .line 705
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 706
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 707
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 708
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 709
    iput-boolean v6, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    goto/16 :goto_0

    .line 713
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_9

    .line 714
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 715
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 716
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 717
    iput-boolean v6, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 719
    :cond_9
    const-string v3, "predefine"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 720
    new-instance v3, Lcom/android/settings/audioprofile/AudioProfileSettings$ResetTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/audioprofile/AudioProfileSettings$ResetTask;-><init>(Lcom/android/settings/audioprofile/AudioProfileSettings;Lcom/android/settings/audioprofile/AudioProfileSettings$1;)V

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 538
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 540
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 542
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v4, v1, Lcom/android/settings/audioprofile/AudioProfilePreference;

    if-eqz v4, :cond_0

    .line 543
    check-cast v1, Lcom/android/settings/audioprofile/AudioProfilePreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    .line 544
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 560
    :goto_0
    return v2

    .line 546
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 549
    :pswitch_1
    iput v6, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mMenuId:I

    .line 550
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 553
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 554
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setChecked()V

    goto :goto_0

    .restart local v1    # "pref":Landroid/preference/Preference;
    :cond_0
    move v2, v3

    .line 560
    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    const-string v2, "Settings/AudioP"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    .line 190
    const-string v2, "audioprofile"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 191
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 192
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 193
    .local v1, "root":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 196
    :cond_0
    const v2, 0x7f06000a

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 197
    const-string v2, "custom"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    .line 199
    const-string v2, "mtk_audioprofile_general"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/audioprofile/AudioProfilePreference;

    .line 200
    .local v0, "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const-string v2, "mtk_audioprofile_silent"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/android/settings/audioprofile/AudioProfilePreference;

    .line 202
    .restart local v0    # "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const-string v2, "mtk_audioprofile_meeting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/android/settings/audioprofile/AudioProfilePreference;

    .line 204
    .restart local v0    # "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const-string v2, "mtk_audioprofile_outdoor"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/android/settings/audioprofile/AudioProfilePreference;

    .line 206
    .restart local v0    # "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mtk_audioprofile_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .line 210
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/audioprofile/AudioProfilePreference;

    iput-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    .line 212
    new-instance v2, Lcom/android/settings/audioprofile/AudioProfileSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/audioprofile/AudioProfileSettings$2;-><init>(Lcom/android/settings/audioprofile/AudioProfileSettings;)V

    iput-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 221
    const-string v2, "music_plus"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

    .line 222
    const-string v2, "sound_enhance"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    .line 223
    const-string v2, "bes_loudness"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mBesLoudnessPref:Landroid/preference/CheckBoxPreference;

    .line 228
    iput-object v6, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mBesLoudnessPref:Landroid/preference/CheckBoxPreference;

    .line 236
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mBesLoudnessPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 237
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    iput-object v6, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    .line 240
    :cond_1
    sget-boolean v2, Lcom/android/settings/audioprofile/AudioProfileSettings;->IS_CMCC:Z

    if-eqz v2, :cond_2

    .line 241
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 242
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_2
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 246
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v6, 0x0

    .line 509
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 510
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 511
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 513
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v4, v2, Lcom/android/settings/audioprofile/AudioProfilePreference;

    if-eqz v4, :cond_0

    .line 514
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "key":Ljava/lang/String;
    check-cast v2, Lcom/android/settings/audioprofile/AudioProfilePreference;

    .end local v2    # "pref":Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    .line 516
    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 517
    const/4 v4, 0x2

    const v5, 0x7f0901af

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 518
    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    .line 519
    .local v3, "senario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    const/4 v4, 0x3

    const v5, 0x7f0901b0

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 522
    const/4 v4, 0x4

    const v5, 0x7f0901b1

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 526
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "senario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const v6, 0x1080027

    const/high16 v10, 0x1040000

    const/4 v9, 0x0

    const v8, 0x104000a

    const/4 v5, 0x1

    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, "dialog":Landroid/app/Dialog;
    iput p1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 578
    if-nez p1, :cond_4

    .line 579
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04004c

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 581
    .local v0, "content":Landroid/view/View;
    const v3, 0x7f0b0117

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    .line 582
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 583
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    const v4, 0x10001

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 585
    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v5, :cond_2

    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v5, :cond_3

    const v3, 0x7f0901ae

    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0901b3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 596
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 637
    .end local v0    # "content":Landroid/view/View;
    :cond_1
    :goto_2
    return-object v1

    .line 585
    .restart local v0    # "content":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    goto :goto_0

    .line 588
    :cond_3
    const v3, 0x7f0901b0

    goto :goto_1

    .line 600
    .end local v0    # "content":Landroid/view/View;
    :cond_4
    if-ne p1, v5, :cond_5

    .line 601
    const/4 v2, 0x0

    .line 602
    .local v2, "stringId":I
    iget v3, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mErrorType:I

    packed-switch v3, :pswitch_data_0

    .line 615
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09027a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 620
    goto :goto_2

    .line 604
    :pswitch_0
    const v2, 0x7f0901b7

    .line 605
    goto :goto_3

    .line 607
    :pswitch_1
    const v2, 0x7f0901b4

    .line 608
    goto :goto_3

    .line 610
    :pswitch_2
    const v2, 0x7f0901b5

    .line 611
    goto :goto_3

    .line 620
    .end local v2    # "stringId":I
    :cond_5
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 621
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0901ad

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0901b2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_2

    .line 627
    :cond_6
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 628
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0901b1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0901b6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mPref:Lcom/android/settings/audioprofile/AudioProfilePreference;

    invoke-virtual {v7}, Lcom/android/settings/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_2

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 453
    const/4 v0, 0x1

    const v1, 0x7f0901ae

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02009f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 458
    const/4 v0, 0x2

    const v1, 0x7f0901ad

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ab

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 462
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 473
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 474
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileCount()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 475
    iput v4, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 476
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 486
    :goto_0
    return v0

    .line 479
    :cond_0
    iput v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mMenuId:I

    .line 480
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 482
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 483
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 486
    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 393
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 394
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 396
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 408
    instance-of v0, p2, Lcom/android/settings/audioprofile/AudioProfilePreference;

    if-eqz v0, :cond_0

    move-object v8, p2

    .line 409
    check-cast v8, Lcom/android/settings/audioprofile/AudioProfilePreference;

    .line 410
    .local v8, "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IAudioProfileExt;->isPrefEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "profileKey"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/audioprofile/EditprofileLenovo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 440
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 418
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "pref":Lcom/android/settings/audioprofile/AudioProfilePreference;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v8}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setChecked()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 375
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfileSettings:onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 378
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfileSettings;->updatePreferenceHierarchy()V

    .line 380
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfileSettings;->dynamicshowSummary()V

    .line 381
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfileSettings;->updateActivePreference()V

    .line 383
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 386
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 492
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 493
    const-string v0, "audioprofilemenuid"

    iget v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings;->mMenuId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 494
    return-void
.end method
