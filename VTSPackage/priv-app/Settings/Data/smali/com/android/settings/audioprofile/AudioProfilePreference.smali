.class public Lcom/android/settings/audioprofile/AudioProfilePreference;
.super Landroid/preference/Preference;
.source "AudioProfilePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioProfilePreference:"

.field private static final XLOGTAG:Ljava/lang/String; = "Settings/AudioP"

.field private static sActiveKey:Ljava/lang/String;

.field private static sCurrentChecked:Landroid/widget/CompoundButton;


# instance fields
.field private mCheckboxButton:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

.field private mKey:Ljava/lang/String;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mPreferenceSummary:Ljava/lang/String;

.field private mPreferenceTitle:Ljava/lang/String;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

.field private mSummary:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 68
    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    .line 75
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 100
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    .line 105
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 110
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    .line 114
    :cond_1
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 117
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    .line 122
    return-void
.end method


# virtual methods
.method public dynamicShowSummary()V
    .locals 3

    .prologue
    .line 253
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioProfilePreference:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dynamicShowSummary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    return-void
.end method

.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 289
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
    .line 269
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

    .line 270
    if-eqz p2, :cond_1

    .line 271
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 274
    :cond_0
    sput-object p1, Lcom/android/settings/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 276
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 278
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 350
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 170
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfilePreference:onCreateView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    const v4, 0x7f040069

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IAudioProfileExt;->createView(I)Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    const v4, 0x7f0b0016

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IAudioProfileExt;->getPrefRadioButton(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 175
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    const v4, 0x7f0b0017

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IAudioProfileExt;->getPreferenceTitle(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    .line 176
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    const v4, 0x7f0b0018

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IAudioProfileExt;->getPreferenceSummary(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    .line 178
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 179
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    .line 181
    :cond_0
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 183
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090132

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_2

    .line 212
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 213
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/settings/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setChecked()V

    .line 219
    :cond_2
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 220
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 227
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    const v4, 0x7f0b001a

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IAudioProfileExt;->getPrefImageView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 229
    .local v0, "detailsView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    const v4, 0x7f0b0019

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IAudioProfileExt;->getPrefImageView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 232
    .local v1, "mDividerImage":Landroid/widget/ImageView;
    if-eqz v0, :cond_3

    .line 233
    iget-object v3, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_3
    return-object v2

    .line 222
    .end local v0    # "detailsView":Landroid/widget/ImageView;
    .end local v1    # "mDividerImage":Landroid/widget/ImageView;
    :cond_4
    const-string v3, "Settings/AudioP"

    const-string v4, "AudioProfilePreference:PreferenceTitle is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setChecked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 297
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    sget-object v1, Lcom/android/settings/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 303
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

    .line 304
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 305
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 306
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 310
    :cond_2
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfilePreference:mCheckboxButton is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 343
    return-void
.end method

.method public setProfileKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "setToProfile"    # Z

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 324
    if-eqz p2, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_1
    return-void
.end method
