.class public Lcom/mediatek/settings/inputmethod/InputMethodExts;
.super Ljava/lang/Object;
.source "InputMethodExts.java"


# static fields
.field private static final KEY_VOICE_UI_ENTRY:Ljava/lang/String; = "voice_ui"

.field private static final TAG:Ljava/lang/String; = "InputMethodAndLanguageSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mIsOnlyImeSettings:Z

.field private mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

.field private mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mVoiceCategory:Landroid/preference/PreferenceCategory;

.field private mVoiceControlIntent:Landroid/content/Intent;

.field private mVoiceUiPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOnlyImeSettings"    # Z
    .param p3, "voiceCategory"    # Landroid/preference/PreferenceCategory;
    .param p4, "pointCategory"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    .line 38
    iput-boolean p2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    .line 39
    iput-object p3, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    .line 40
    iput-object p4, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/inputmethod/InputMethodExts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/inputmethod/InputMethodExts;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/inputmethod/InputMethodExts;)Landroid/hardware/input/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/inputmethod/InputMethodExts;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIm:Landroid/hardware/input/InputManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/inputmethod/InputMethodExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/inputmethod/InputMethodExts;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->updatePointerPrimaryValue()V

    return-void
.end method

.method private updatePointerPrimaryValue()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->isPointerPrimaryKeyChanged(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 139
    .local v0, "currentValue":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 140
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    .end local v0    # "currentValue":I
    :cond_0
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initExtendsItems()V
    .locals 5

    .prologue
    const v4, 0x7f090309

    .line 46
    new-instance v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    .line 47
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    const-string v2, "voice_ui"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    const v3, 0x7f0902ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    if-nez v1, :cond_1

    .line 53
    :cond_1
    const-string v1, "InputMethodAndLanguageSettings"

    const-string v2, "going to remove voice ui feature "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    .line 55
    const-string v1, "InputMethodAndLanguageSettings"

    const-string v2, "removed done"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    const-string v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIm:Landroid/hardware/input/InputManager;

    .line 62
    new-instance v1, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    .line 63
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    const-string v2, "mouse_primary_button_settings"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    const v2, 0x7f090307

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 65
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    const v2, 0x7f090308

    invoke-virtual {v1, v2}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 66
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    const v2, 0x7f0a00b3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 67
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    const v2, 0x7f0a00b4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 69
    new-instance v0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    .local v0, "doubleClickSpeedPrefere":Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;
    const-string v1, "double_click_speed"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 72
    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 74
    iget-boolean v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    if-nez v1, :cond_3

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_5

    .line 95
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    :cond_4
    if-eqz v0, :cond_5

    .line 99
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    :cond_5
    return-void
.end method

.method public onClickExtendsItems(Ljava/lang/String;)V
    .locals 2
    .param p1, "preferKey"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "voice_ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    :cond_0
    return-void
.end method

.method public resumeExtendsItems()V
    .locals 4

    .prologue
    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.voicecommand.VOICE_CONTROL_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 113
    :cond_0
    const-string v1, "InputMethodAndLanguageSettings"

    const-string v2, "going to remove voice ui feature "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 115
    const-string v1, "InputMethodAndLanguageSettings"

    const-string v2, "removed done"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    if-nez v1, :cond_2

    .line 133
    :cond_2
    return-void

    .line 119
    :cond_3
    iget-boolean v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    if-nez v1, :cond_1

    goto :goto_0
.end method
