.class public Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;
.super Landroid/preference/Preference;
.source "AudioProfilePreferenceLenovo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioProfilePreference:"

.field private static final XLOGTAG:Ljava/lang/String; = "Settings/AudioP"

.field private static sActiveKey:Ljava/lang/String;

.field private static sCurrentChecked:Landroid/widget/CompoundButton;


# instance fields
.field private mCheckboxButton:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mKey:Ljava/lang/String;

.field private mPreferenceSummary:Ljava/lang/String;

.field private mPreferenceTitle:Ljava/lang/String;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSummary:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 33
    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sActiveKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mPreferenceTitle:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mPreferenceSummary:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mTextView:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mSummary:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 61
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mContext:Landroid/content/Context;

    .line 64
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mPreferenceTitle:Ljava/lang/String;

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mPreferenceSummary:Ljava/lang/String;

    .line 73
    :cond_1
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 76
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mKey:Ljava/lang/String;

    .line 82
    const v0, 0x7f040067

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 84
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfilePreference:new AudioProfilePreference setLayoutResource"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method static synthetic access$000()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/CompoundButton;)Landroid/widget/CompoundButton;
    .locals 0
    .param p0, "x0"    # Landroid/widget/CompoundButton;

    .prologue
    .line 27
    sput-object p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method


# virtual methods
.method public dynamicShowSummary()V
    .locals 5

    .prologue
    .line 184
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfilePreference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dynamicShowSummary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 188
    .local v0, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 194
    .local v1, "vibrationEnabled":Z
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfilePreference:vibrationEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz v1, :cond_2

    .line 197
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mContext:Landroid/content/Context;

    const v4, 0x7f0900f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .end local v0    # "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v1    # "vibrationEnabled":Z
    :cond_1
    :goto_0
    return-void

    .line 200
    .restart local v0    # "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v1    # "vibrationEnabled":Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mContext:Landroid/content/Context;

    const v4, 0x7f0900f7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    .end local v1    # "vibrationEnabled":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mPreferenceSummary:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mPreferenceSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mPreferenceTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 131
    const-string v1, "Settings/AudioP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioProfilePreference:getView from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 136
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo$1;

    invoke-direct {v2, p0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo$1;-><init>(Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->setChecked()V

    .line 165
    :cond_0
    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mTextView:Landroid/widget/TextView;

    .line 166
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mPreferenceTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_0
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mSummary:Landroid/widget/TextView;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->dynamicShowSummary()V

    .line 175
    return-object v0

    .line 169
    :cond_1
    const-string v1, "Settings/AudioP"

    const-string v2, "AudioProfilePreference:PreferenceTitle is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sActiveKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sActiveKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 219
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioProfilePreference:onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz p2, :cond_1

    .line 222
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 225
    :cond_0
    sput-object p1, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 227
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 229
    :cond_1
    return-void
.end method

.method public setChecked()V
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sActiveKey:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;

    sget-object v1, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 254
    :cond_0
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioProfilePreference:setChecked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfilePreference:mCheckboxButton is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setProfileKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mKey:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "setToProfile"    # Z

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mPreferenceTitle:Ljava/lang/String;

    .line 274
    if-eqz p2, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_1
    return-void
.end method
