.class public Lcom/mediatek/nfc/CardEmulationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CardEmulationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CATEGORY_KEY:Ljava/lang/String; = "card_emulation_settings_category"

.field private static final TAG:Ljava/lang/String; = "CardEmulationSettings"


# instance fields
.field private EMULATION_OFF:Ljava/lang/String;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private final mActiveCardModeObserver:Landroid/database/ContentObserver;

.field private mActivePref:Lcom/mediatek/nfc/SecurityItemPreference;

.field private final mCardModeListObserver:Landroid/database/ContentObserver;

.field private final mCardSwitchingObserver:Landroid/database/ContentObserver;

.field private final mCardtransactionObserver:Landroid/database/ContentObserver;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mItemKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/nfc/SecurityItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

.field private mUpdateStatusOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 286
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$1;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    .line 294
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$2;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    .line 302
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$3;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    .line 311
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$4;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/nfc/CardEmulationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/nfc/CardEmulationSettings;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->updatePreferences()V

    return-void
.end method

.method private addItemPreference()V
    .locals 7

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "list":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 197
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 198
    .local v2, "key":Ljava/lang/String;
    new-instance v5, Lcom/mediatek/nfc/SecurityItemPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mediatek/nfc/SecurityItemPreference;-><init>(Landroid/content/Context;)V

    .line 199
    .local v5, "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    invoke-virtual {v5, v2}, Lcom/mediatek/nfc/SecurityItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 204
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v5    # "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    :cond_0
    return-void
.end method

.method private getCardEmulationList()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "nfc_multise_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "list":Ljava/lang/String;
    const-string v0, "[,]"

    .line 216
    .local v0, "delims":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "tokens":[Ljava/lang/String;
    array-length v3, v5

    .line 218
    .local v3, "length":I
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 219
    add-int/lit8 v6, v3, -0x1

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 220
    const-string v6, "CardEmulationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EMULATION_OFF is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    add-int/lit8 v6, v3, -0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 223
    .local v1, "emulationList":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 224
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_1

    .line 225
    aget-object v6, v5, v2

    aput-object v6, v1, v2

    .line 226
    const-string v6, "CardEmulationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "emulation list item is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private removeAll()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 135
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 136
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 137
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    return-void
.end method

.method private updatePreferences()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 145
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->removeAll()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "nfc_multise_active"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "activeMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "nfc_multise_previous"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "previousMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "nfc_multise_in_transation"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 150
    .local v5, "transactionStatus":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "nfc_multise_in_switching"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 151
    .local v4, "switchingStatus":I
    const-string v8, "CardEmulationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatePreferences(), active mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " previous mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v8, "CardEmulationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatePreferences, transactionStatus is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " switchingStatus is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 155
    iput-boolean v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 156
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 157
    iput-boolean v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 158
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_0

    .line 159
    const-string v8, "CardEmulationSettings"

    const-string v9, "no available security elment found and the active mode is off"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v9, 0x7f0902e0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 168
    :goto_0
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 192
    :goto_2
    return-void

    .line 162
    :cond_0
    if-nez v4, :cond_1

    .line 163
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v9, 0x7f0902e1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v9, 0x7f0902e2

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    move v6, v7

    .line 168
    goto :goto_1

    .line 170
    :cond_3
    iput-boolean v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 171
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 172
    iput-boolean v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 173
    if-ne v4, v6, :cond_4

    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 174
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 175
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v7, 0x7f0902e3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 177
    :cond_4
    iget-object v9, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    move v8, v6

    :goto_3
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->addItemPreference()V

    .line 179
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 180
    .local v2, "prefCount":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 182
    .local v1, "itemPref":Lcom/mediatek/nfc/SecurityItemPreference;
    if-eqz v1, :cond_6

    .line 183
    invoke-virtual {v1, v6}, Lcom/mediatek/nfc/SecurityItemPreference;->setChecked(Z)Z

    .line 184
    iput-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActivePref:Lcom/mediatek/nfc/SecurityItemPreference;

    .line 188
    :goto_4
    iget-object v9, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    if-ne v4, v6, :cond_7

    move v8, v6

    :goto_5
    invoke-virtual {v9, v8}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 189
    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    if-nez v5, :cond_8

    if-nez v4, :cond_8

    :goto_6
    invoke-virtual {v8, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .end local v1    # "itemPref":Lcom/mediatek/nfc/SecurityItemPreference;
    .end local v2    # "prefCount":I
    :cond_5
    move v8, v7

    .line 177
    goto :goto_3

    .line 186
    .restart local v1    # "itemPref":Lcom/mediatek/nfc/SecurityItemPreference;
    .restart local v2    # "prefCount":I
    :cond_6
    const-string v8, "CardEmulationSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activie mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", can not find it on screen"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    move v8, v7

    .line 188
    goto :goto_5

    :cond_8
    move v6, v7

    .line 189
    goto :goto_6
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    .line 107
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 117
    const-string v1, "CardEmulationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, isChecked status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    if-eqz v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 122
    :cond_0
    if-nez p2, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    iget-object v3, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    :goto_1
    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_previous"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "previousMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    const-string v1, "CardEmulationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, set active mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v3, 0x7f06000e

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 82
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 83
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x207000b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 85
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 87
    .local v2, "padding":I
    iget-object v3, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 90
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 95
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0902de

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 97
    iget-object v3, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    const-string v3, "card_emulation_settings_category"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/nfc/CardEmulationProgressCategory;

    iput-object v3, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    .line 99
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    .line 100
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 113
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 284
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 233
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/mediatek/nfc/SecurityItemPreference;

    if-eqz v4, :cond_0

    .line 234
    const-string v4, "CardEmulationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange, select "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nfc_multise_active"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v4, v2}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 237
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 239
    .local v1, "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    :cond_0
    move v2, v3

    .line 243
    :cond_1
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 248
    if-eqz p2, :cond_0

    instance-of v6, p2, Lcom/mediatek/nfc/SecurityItemPreference;

    if-eqz v6, :cond_0

    .line 249
    const-string v6, "CardEmulationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "nfc_multise_active"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "activeMode":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "prefKey":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "nfc_multise_active"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v6, v4}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 255
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 256
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 257
    .local v2, "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .end local v0    # "activeMode":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    .end local v3    # "prefKey":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 262
    :cond_1
    return v4
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_list"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_in_transation"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_in_switching"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->updatePreferences()V

    .line 276
    return-void
.end method
