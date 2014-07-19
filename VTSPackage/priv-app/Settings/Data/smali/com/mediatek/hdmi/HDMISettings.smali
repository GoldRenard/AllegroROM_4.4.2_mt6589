.class public Lcom/mediatek/hdmi/HDMISettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HDMISettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ACTION_EDID_UPDATE:Ljava/lang/String; = "mediatek.action.HDMI_EDID_UPDATED"

.field private static final HDMI_NO_SCALE:I = -0x1

.field private static final HDMI_RESOLUTION_AUTO:I = 0x64

.field private static final KEY_TOGGLE_HDMI:Ljava/lang/String; = "hdmi_toggler"

.field private static final KEY_VIDEO_RESOLUTION:Ljava/lang/String; = "video_resolution"

.field private static final KEY_VIDEO_SCALE:Ljava/lang/String; = "video_scale"

.field private static final TAG:Ljava/lang/String; = "HDMISettings"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

.field private mHdmiSettingsObserver:Landroid/database/ContentObserver;

.field private mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleHdmiPref:Landroid/preference/CheckBoxPreference;

.field private mVideoResolutionPref:Landroid/preference/ListPreference;

.field private mVideoScalePref:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 43
    new-instance v0, Lcom/mediatek/hdmi/HDMISettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/HDMISettings$1;-><init>(Lcom/mediatek/hdmi/HDMISettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 53
    new-instance v0, Lcom/mediatek/hdmi/HDMISettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/HDMISettings$2;-><init>(Lcom/mediatek/hdmi/HDMISettings;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/hdmi/HDMISettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/hdmi/HDMISettings;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updatePref()V

    return-void
.end method

.method private updatePref()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "HDMISettings"

    const-string v1, "updatePref"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updatePrefStatus()V

    .line 154
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updateSelectedResolution()V

    .line 155
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updateSelectedScale()V

    .line 156
    return-void
.end method

.method private updatePrefStatus()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 159
    const-string v4, "HDMISettings"

    const-string v5, "updatePrefStatus"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 161
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 164
    :cond_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 168
    :cond_1
    const/4 v3, 0x0

    .line 170
    .local v3, "shouldEnable":Z
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    invoke-interface {v4}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->isSignalOutputting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 174
    :goto_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 175
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 176
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hdmi_enable_status"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 178
    .local v2, "hdmiEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 179
    return-void

    .line 171
    .end local v2    # "hdmiEnabled":Z
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "HDMISettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hdmi manager RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateSelectedResolution()V
    .locals 15

    .prologue
    const/16 v14, 0x64

    .line 182
    const-string v11, "HDMISettings"

    const-string v12, "updateSelectedResolution"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 184
    .local v1, "dlg":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 185
    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 187
    :cond_0
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hdmi_video_resolution"

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 189
    .local v10, "videoResolution":I
    if-le v10, v14, :cond_1

    .line 190
    const/16 v10, 0x64

    .line 192
    :cond_1
    const/4 v11, 0x1

    new-array v9, v11, [I

    const/4 v11, 0x0

    aput v14, v9, v11

    .line 194
    .local v9, "supportedResolutions":[I
    :try_start_0
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    invoke-interface {v11}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->getSupportedResolutions()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 198
    :goto_0
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a009e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, "resolutionEntries":[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v5, "realResolutionEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v6, "realResolutionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0901ed

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    move-object v0, v9

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget v7, v0, v3

    .line 207
    .local v7, "resolution":I
    :try_start_1
    aget-object v11, v8, v7

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "realResolutionEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v6    # "realResolutionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v7    # "resolution":I
    .end local v8    # "resolutionEntries":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Landroid/os/RemoteException;
    const-string v11, "HDMISettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hdmi manager RemoteException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "arr$":[I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "realResolutionEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v6    # "realResolutionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v7    # "resolution":I
    .restart local v8    # "resolutionEntries":[Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v11, "HDMISettings"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 213
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v7    # "resolution":I
    :cond_2
    iget-object v12, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 215
    iget-object v12, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v6, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 218
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private updateSelectedScale()V
    .locals 5

    .prologue
    .line 222
    const-string v2, "HDMISettings"

    const-string v3, "updateSelectedScale"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 224
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hdmi_video_scale"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 229
    .local v1, "videoScale":I
    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 230
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v8, "HDMISettings"

    const-string v9, "HDMISettings.onCreate()"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const v8, 0x7f060020

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    .line 72
    const-string v8, "hdmi_toggler"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/CheckBoxPreference;

    .line 73
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    const-string v8, "video_resolution"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    .line 75
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    const-string v8, "video_scale"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    .line 77
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 79
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 80
    .local v6, "values":[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v5, "scaleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v6

    if-ge v3, v8, :cond_1

    .line 82
    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 83
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0901f2

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v6, v3

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_0
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0901f1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_1
    iget-object v9, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 91
    const-string v8, "mtkhdmi"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    .line 93
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    if-nez v8, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 120
    :cond_2
    :goto_2
    return-void

    .line 98
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    invoke-interface {v8}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 99
    const v8, 0x7f0901ee

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "hdmi":Ljava/lang/String;
    const v8, 0x7f0901ef

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "mhl":Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v2    # "hdmi":Ljava/lang/String;
    .end local v4    # "mhl":Ljava/lang/String;
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hdmi_video_scale"

    const/4 v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 116
    .local v7, "videoScale":I
    if-gez v7, :cond_2

    .line 117
    const-string v8, "HDMISettings"

    const-string v9, "remove mVideoScalePref"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 106
    .end local v7    # "videoScale":I
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "HDMISettings"

    const-string v9, "getDisplayType RemoteException"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 149
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 139
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "key":Ljava/lang/String;
    const-string v4, "HDMISettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " preference changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_0
    const-string v4, "hdmi_toggler"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 238
    .local v0, "checked":Z
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    invoke-interface {v4, v0}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->enableHdmi(Z)Z

    .line 253
    .end local v0    # "checked":Z
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 239
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v4, "video_resolution"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->setVideoResolution(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "HDMISettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hdmi manager RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    :try_start_1
    const-string v4, "video_scale"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 244
    .local v3, "scaleValue":I
    if-ltz v3, :cond_3

    const/16 v4, 0xa

    if-gt v3, v4, :cond_3

    .line 245
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    invoke-interface {v4, v3}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->setVideoScale(I)Z

    goto :goto_0

    .line 247
    :cond_3
    const-string v4, "HDMISettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scaleValue error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 125
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updatePref()V

    .line 126
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_enable_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_cable_plugged"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    return-void
.end method
