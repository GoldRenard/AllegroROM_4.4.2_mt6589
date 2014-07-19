.class public Lcom/mediatek/settings/DisplaySettingsExt;
.super Ljava/lang/Object;
.source "DisplaySettingsExt.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ACTION_CLEARMOTION_DIMMED:Ljava/lang/String; = "com.mediatek.clearmotion.DIMMED_UPDATE"

.field private static final CONTACT_STRING:Ljava/lang/String; = "&"

.field public static final CURRENT_KEYGURAD_LAYER_KEY:Ljava/lang/String; = "mtk_current_keyguard_layer"

.field private static final DATA_STORE_NONE:Ljava/lang/String; = "none"

.field private static final DEFAULT_LOCK_SCREEN_NOTIFICATIONS:I = 0x1

.field private static final DISPLAY_DEFAULT:Ljava/lang/String; = "display_default"

.field private static final DISPLAY_PERSONALIZE:Ljava/lang/String; = "display_personalize"

.field private static final INCOMING_INDICATOR_ON_LOCKSCREEN:Ljava/lang/String; = "incoming_indicator_on_lockscreen"

.field private static final KEY_ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field private static final KEY_CLEAR_MOTION:Ljava/lang/String; = "clearMotion"

.field private static final KEY_COLOR:Ljava/lang/String; = "color"

.field private static final KEY_DISPLAY_CLEAR_MOTION:Ljava/lang/String; = "persist.sys.display.clearMotion"

.field private static final KEY_DISPLAY_CLEAR_MOTION_DIMMED:Ljava/lang/String; = "sys.display.clearMotion.dimmed"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final KEY_HDMI_SETTINGS:Ljava/lang/String; = "hdmi_settings"

.field private static final KEY_LOCK_SCREEN_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications"

.field private static final KEY_LOCK_SCREEN_STYLE:Ljava/lang/String; = "lock_screen_style"

.field private static final KEY_MTK_WALLPAPER:Ljava/lang/String; = "mtk_wallpaper"

.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final KEY_WIFI_DISPLAY:Ljava/lang/String; = "wifi_display"

.field private static final LOCK_SCREEN_STYLE_INTENT_NAME:Ljava/lang/String; = "com.mediatek.lockscreensettings.LockScreenStyleSettings"

.field private static final LOCK_SCREEN_STYLE_INTENT_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final PARSER_STRING_LENGTH_ONE:I = 0x1

.field private static final PARSER_STRING_LENGTH_TWO:I = 0x2

.field private static final PARSER_STRING_LENGTH_ZERO:I = 0x0

.field private static final SUM_CATEGORY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "mediatek.DisplaySettings"

.field private static final TYPE_CATEGORY:I = 0x0

.field private static final TYPE_CHECKBOX:I = 0x2

.field private static final TYPE_LIST:I = 0x3

.field private static final TYPE_PREFERENCE:I = 0x1


# instance fields
.field private mClearMotion:Landroid/preference/CheckBoxPreference;

.field mColorPref:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mDisplayDefCategory:Landroid/preference/PreferenceCategory;

.field private mDisplayPerCategory:Landroid/preference/PreferenceCategory;

.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private mHDMISettings:Landroid/preference/Preference;

.field private mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

.field private mIsUpdateFont:Z

.field private mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

.field private mLockScreenStylePref:Landroid/preference/Preference;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPlmnName:Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private mScreenTimeoutPreference:Landroid/preference/Preference;

.field private mSingleItem:Z

.field private mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

.field mWallpaperPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSingleItem:Z

    .line 143
    new-instance v0, Lcom/mediatek/settings/DisplaySettingsExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/DisplaySettingsExt$1;-><init>(Lcom/mediatek/settings/DisplaySettingsExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 643
    new-instance v0, Lcom/mediatek/settings/DisplaySettingsExt$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/DisplaySettingsExt$2;-><init>(Lcom/mediatek/settings/DisplaySettingsExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 701
    new-instance v0, Lcom/mediatek/settings/DisplaySettingsExt$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/DisplaySettingsExt$3;-><init>(Lcom/mediatek/settings/DisplaySettingsExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    const-string v0, "mediatek.DisplaySettings"

    const-string v1, "DisplaySettingsExt"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-object p1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/DisplaySettingsExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateLockScreenStyle()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/DisplaySettingsExt;)Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/DisplaySettingsExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSingleItem:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/DisplaySettingsExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateClearMotionStatus()V

    return-void
.end method

.method private clearMotionStyle()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    .line 678
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const v4, 0x7f090314

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "title":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 680
    .local v0, "spanText":Landroid/text/SpannableString;
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    .line 681
    .local v1, "strLen":I
    new-instance v3, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v3}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 682
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f19999a

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 683
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 684
    return-void
.end method

.method private createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 2
    .param p1, "type"    # I
    .param p2, "titleRes"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "screen"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "preference":Landroid/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 182
    invoke-virtual {p4, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    return-object v0

    .line 164
    :pswitch_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 165
    .restart local v0    # "preference":Landroid/preference/Preference;
    goto :goto_0

    .line 167
    :pswitch_1
    new-instance v0, Landroid/preference/Preference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 168
    .restart local v0    # "preference":Landroid/preference/Preference;
    goto :goto_0

    .line 170
    :pswitch_2
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 171
    .restart local v0    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 174
    :pswitch_3
    new-instance v0, Landroid/preference/ListPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 175
    .restart local v0    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initPreference(Landroid/preference/PreferenceScreen;)V
    .locals 14
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 192
    const/4 v10, 0x0

    const v11, 0x7f0902be

    const-string v12, "display_personalize"

    invoke-direct {p0, v10, v11, v12, p1}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    .line 198
    iget-boolean v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSingleItem:Z

    if-nez v10, :cond_0

    .line 199
    const/4 v10, 0x0

    const v11, 0x7f0902bf

    const-string v12, "display_default"

    invoke-direct {p0, v10, v11, v12, p1}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    .line 204
    :cond_0
    const/4 v10, 0x2

    const v11, 0x7f090314

    const-string v12, "clearMotion"

    iget-object v13, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/CheckBoxPreference;

    .line 206
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f090313

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 207
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->clearMotionStyle()V

    .line 208
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_1

    .line 209
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    :cond_1
    const/4 v10, 0x1

    const v11, 0x7f0902f8

    const-string v12, "lock_screen_style"

    iget-object v13, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    .line 214
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v10, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 216
    const/4 v10, 0x2

    const v11, 0x7f0902f6

    const-string v12, "lock_screen_notifications"

    iget-object v13, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

    .line 218
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0902f7

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 220
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    const/4 v10, 0x1

    const v11, 0x7f0906e2

    const-string v12, "mtk_wallpaper"

    iget-object v13, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mWallpaperPref:Landroid/preference/Preference;

    .line 231
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mWallpaperPref:Landroid/preference/Preference;

    const-string v11, "com.android.settings.WallpaperTypeSettings"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 233
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mWallpaperPref:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    const-string v10, "mtkhdmi"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    .line 239
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    if-eqz v10, :cond_2

    .line 243
    iget-boolean v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSingleItem:Z

    if-eqz v10, :cond_4

    .line 244
    const/4 v10, 0x1

    const v11, 0x7f0901e8

    const-string v12, "hdmi_settings"

    invoke-direct {p0, v10, v11, v12, p1}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    .line 251
    :goto_0
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    const v11, 0x7f0901e9

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 252
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    const-string v11, "com.mediatek.hdmi.HDMISettings"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 254
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    invoke-interface {v10}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 255
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const v11, 0x7f0901ee

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "hdmi":Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const v11, 0x7f0901ef

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, "mhl":Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    iget-object v11, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    invoke-virtual {v11}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    iget-object v11, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    invoke-virtual {v11}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v2    # "hdmi":Ljava/lang/String;
    .end local v6    # "mhl":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 267
    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    if-ge v3, v10, :cond_5

    .line 268
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 269
    .local v7, "preference":Landroid/preference/Preference;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 271
    iget-boolean v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSingleItem:Z

    if-nez v10, :cond_3

    .line 272
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 277
    :cond_3
    const-string v10, "font_size"

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 278
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    if-eqz v10, :cond_c

    .line 279
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    invoke-virtual {v10, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 267
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 247
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v7    # "preference":Landroid/preference/Preference;
    :cond_4
    const/4 v10, 0x1

    const v11, 0x7f0901e8

    const-string v12, "hdmi_settings"

    iget-object v13, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    goto/16 :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Landroid/os/RemoteException;
    const-string v10, "mediatek.DisplaySettings"

    const-string v11, "getDisplayType RemoteException"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_5
    iget-boolean v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSingleItem:Z

    if-eqz v10, :cond_9

    .line 302
    const-string v10, "screen_timeout"

    invoke-virtual {p1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreenTimeoutPreference:Landroid/preference/Preference;

    .line 303
    const-string v10, "font_size"

    invoke-virtual {p1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mFontSizePref:Landroid/preference/ListPreference;

    .line 306
    const-string v10, "wallpaper"

    invoke-virtual {p1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 307
    const-string v10, "wallpaper"

    invoke-virtual {p1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    :cond_6
    const-string v10, "mediatek.DisplaySettings"

    const-string v11, "Plugin called for adding the prefernce"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 339
    :goto_4
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const-string v11, "display"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 341
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v8

    .line 342
    .local v8, "status":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v10

    if-nez v10, :cond_7

    .line 343
    const-string v10, "mediatek.DisplaySettings"

    const-string v11, "Wifi display feature is unavailable, remove cast screen pref"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v10, "wifi_display"

    invoke-virtual {p1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    .line 345
    .local v9, "wfdPreferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v9, :cond_7

    .line 346
    const-string v10, "mediatek.DisplaySettings"

    const-string v11, "Find the wfd preference"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    .end local v9    # "wfdPreferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_7
    iget-boolean v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSingleItem:Z

    if-eqz v10, :cond_b

    .line 359
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v11, "screensaver"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 370
    :cond_8
    :goto_5
    return-void

    .line 318
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v8    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_9
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v11, "screen_timeout"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreenTimeoutPreference:Landroid/preference/Preference;

    .line 319
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v11, "font_size"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mFontSizePref:Landroid/preference/ListPreference;

    .line 322
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v11, "wallpaper"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 323
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v12, "wallpaper"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    :cond_a
    const-string v10, "mediatek.DisplaySettings"

    const-string v11, "Plugin called for adding the prefernce"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getStatusBarPlmnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mPlmnName:Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    .line 327
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mPlmnName:Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    iget-object v11, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    invoke-interface {v10, v11, v4}, Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;->createCheckBox(Landroid/preference/PreferenceCategory;I)V

    .line 329
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 330
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 331
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 364
    .restart local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v8    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_b
    iget-object v10, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v11, "screensaver"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_8

    goto :goto_5

    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v4    # "j":I
    .end local v8    # "status":Landroid/hardware/display/WifiDisplayStatus;
    .restart local v5    # "j":I
    .restart local v7    # "preference":Landroid/preference/Preference;
    :cond_c
    move v4, v5

    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_3
.end method

.method private queryPluginKeyguardLayers()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 502
    const/4 v7, 0x0

    .line 503
    .local v7, "pluginLayers":Z
    const/4 v2, 0x0

    .line 505
    .local v2, "info":Lcom/mediatek/keyguard/ext/KeyguardLayerInfo;
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const-class v10, Lcom/mediatek/keyguard/ext/IKeyguardLayer;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Landroid/content/pm/Signature;

    invoke-static {v9, v10, v11}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v4

    .line 507
    .local v4, "plugManager":Lcom/mediatek/pluginmanager/PluginManager;
    invoke-virtual {v4}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v6

    .line 508
    .local v6, "pluginCount":I
    const-string v9, "mediatek.DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getKeyguardLayers: pluginCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    if-eqz v6, :cond_1

    .line 512
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 513
    invoke-virtual {v4, v1}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v5

    .line 514
    .local v5, "plugin":Lcom/mediatek/pluginmanager/Plugin;, "Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/keyguard/ext/IKeyguardLayer;>;"
    invoke-virtual {v5}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/keyguard/ext/IKeyguardLayer;

    .line 515
    .local v3, "keyguardLayer":Lcom/mediatek/keyguard/ext/IKeyguardLayer;
    invoke-interface {v3}, Lcom/mediatek/keyguard/ext/IKeyguardLayer;->getKeyguardLayerInfo()Lcom/mediatek/keyguard/ext/KeyguardLayerInfo;

    move-result-object v2

    .line 516
    const-string v9, "mediatek.DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getKeyguardLayers: i = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",keyguardLayer = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",info = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    if-eqz v2, :cond_0

    .line 518
    const/4 v7, 0x1

    move v8, v7

    .line 528
    .end local v1    # "i":I
    .end local v3    # "keyguardLayer":Lcom/mediatek/keyguard/ext/IKeyguardLayer;
    .end local v4    # "plugManager":Lcom/mediatek/pluginmanager/PluginManager;
    .end local v5    # "plugin":Lcom/mediatek/pluginmanager/Plugin;, "Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/keyguard/ext/IKeyguardLayer;>;"
    .end local v6    # "pluginCount":I
    :goto_1
    return v8

    .line 512
    .restart local v1    # "i":I
    .restart local v3    # "keyguardLayer":Lcom/mediatek/keyguard/ext/IKeyguardLayer;
    .restart local v4    # "plugManager":Lcom/mediatek/pluginmanager/PluginManager;
    .restart local v5    # "plugin":Lcom/mediatek/pluginmanager/Plugin;, "Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/keyguard/ext/IKeyguardLayer;>;"
    .restart local v6    # "pluginCount":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    .end local v1    # "i":I
    .end local v3    # "keyguardLayer":Lcom/mediatek/keyguard/ext/IKeyguardLayer;
    .end local v4    # "plugManager":Lcom/mediatek/pluginmanager/PluginManager;
    .end local v5    # "plugin":Lcom/mediatek/pluginmanager/Plugin;, "Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/keyguard/ext/IKeyguardLayer;>;"
    .end local v6    # "pluginCount":I
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "mediatek.DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPluginKeyguardLayers exception happens: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "plugManager":Lcom/mediatek/pluginmanager/PluginManager;
    .restart local v6    # "pluginCount":I
    :cond_1
    move v8, v7

    .line 528
    goto :goto_1
.end method

.method private updateClearMotionStatus()V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 692
    const-string v0, "mediatek.DisplaySettings"

    const-string v1, "updateClearMotionStatus"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.display.clearMotion"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 694
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/CheckBoxPreference;

    const-string v1, "sys.display.clearMotion.dimmed"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 696
    :cond_0
    return-void
.end method

.method private updateFontSize(Landroid/preference/ListPreference;)V
    .locals 11
    .param p1, "fontSizePreference"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v7, -0x40800000

    .line 584
    const-string v4, "mediatek.DisplaySettings"

    const-string v5, "update font size "

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 588
    .local v3, "values":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_small"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    .line 590
    .local v2, "small":F
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_large"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 592
    .local v1, "large":F
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_extralarge"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 594
    .local v0, "extraLarge":F
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size small = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size large = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size extraLarge = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    cmpl-float v4, v2, v7

    if-nez v4, :cond_0

    cmpl-float v4, v1, v7

    if-nez v4, :cond_0

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_5

    .line 599
    :cond_0
    aget-object v4, v3, v8

    if-eqz v4, :cond_1

    cmpl-float v4, v2, v7

    if-eqz v4, :cond_1

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 601
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_1
    aget-object v4, v3, v9

    if-eqz v4, :cond_2

    cmpl-float v4, v1, v7

    if-eqz v4, :cond_2

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 605
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_2
    aget-object v4, v3, v10

    if-eqz v4, :cond_3

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_3

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 609
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_3
    if-eqz v3, :cond_4

    .line 613
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 616
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mIsUpdateFont:Z

    .line 618
    :cond_5
    return-void
.end method

.method private updateLockScreenStyle()V
    .locals 7

    .prologue
    .line 470
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 471
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.mediatek.lockscreensettings.LockScreenStyleSettings"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .local v0, "comName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 473
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 475
    .local v3, "lockScreenStyleApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->queryPluginKeyguardLayers()Z

    move-result v1

    .line 477
    .local v1, "hasPlugin":Z
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 479
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lockScreenStyleApps.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 482
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 493
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateLockScreenStyleSummary()V

    .line 495
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    const-string v4, "mediatek.DisplaySettings"

    const-string v5, "lock screen style query return null or size 0 "

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 488
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateLockScreenStyleSummary()V
    .locals 4

    .prologue
    .line 532
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mtk_current_keyguard_layer"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/DisplaySettingsExt;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "lockScreenStyleSummary":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    const-string v1, "mediatek.DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockScreenStyleSummary = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    const v2, 0x7f0901f5

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 541
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public floatToIndex(Landroid/preference/ListPreference;F)I
    .locals 7
    .param p1, "fontSizePreference"    # Landroid/preference/ListPreference;
    .param p2, "val"    # F

    .prologue
    .line 621
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "floatToIndex enter val = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v2, -0x1

    .line 623
    .local v2, "res":I
    iget-boolean v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mIsUpdateFont:Z

    if-eqz v4, :cond_2

    .line 624
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 625
    .local v1, "indicesEntry":[Ljava/lang/CharSequence;
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 627
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 628
    .local v3, "thisVal":F
    cmpl-float v4, p2, v3

    if-nez v4, :cond_0

    .line 629
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Select : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    move v2, v0

    .line 626
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    .end local v3    # "thisVal":F
    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 634
    const/4 v2, 0x1

    .line 638
    .end local v0    # "i":I
    .end local v1    # "indicesEntry":[Ljava/lang/CharSequence;
    :cond_2
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "floatToIndex, res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return v2
.end method

.method public onCreate(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 373
    const-string v0, "mediatek.DisplaySettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSingleItem:Z

    if-eqz v0, :cond_0

    .line 376
    iput-object p1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreen:Landroid/preference/PreferenceScreen;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 380
    invoke-direct {p0, p1}, Lcom/mediatek/settings/DisplaySettingsExt;->initPreference(Landroid/preference/PreferenceScreen;)V

    .line 381
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateLockScreenStyle()V

    .line 382
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreenTimeoutPreference:Landroid/preference/Preference;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->setTimeoutPrefTitle(Landroid/preference/Preference;)V

    .line 384
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateFontSize(Landroid/preference/ListPreference;)V

    .line 386
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 422
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 425
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 426
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 448
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    if-ne p1, v3, :cond_1

    .line 449
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 450
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v5, "com.mediatek.lockscreensettings.LockScreenStyleSettings"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .local v0, "comName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 453
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 465
    .end local v0    # "comName":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 455
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_3

    .line 456
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 457
    .local v2, "value":Z
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "incoming_indicator_on_lockscreen"

    if-eqz v2, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 459
    .end local v2    # "value":Z
    :cond_3
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 462
    .restart local v2    # "value":Z
    const-string v5, "persist.sys.display.clearMotion"

    if-eqz v2, :cond_4

    const-string v3, "1"

    :goto_2
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "0"

    goto :goto_2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 389
    const-string v3, "mediatek.DisplaySettings"

    const-string v4, "onResume of DisplaySettings"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 398
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 399
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mColorPref:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 400
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mColorPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mColorPref:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/thememanager/ThemeManager;->getThemeSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 402
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mWallpaperPref:Landroid/preference/Preference;

    const-string v4, "current_wallpaper_component_name"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/DisplaySettingsExt;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "incoming_indicator_on_lockscreen"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 407
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateLockScreenStyleSummary()V

    .line 410
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SMARTBOOK_PLUG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 414
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.mediatek.clearmotion.DIMMED_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 415
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateClearMotionStatus()V

    .line 416
    return-void

    .line 405
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public parseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "decodeStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 545
    if-nez p1, :cond_0

    .line 546
    const-string v7, "mediatek.DisplaySettings"

    const-string v8, "parseString error as decodeStr is null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v7, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const v8, 0x7f0901f5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 576
    :goto_0
    return-object v4

    .line 549
    :cond_0
    move-object v4, p1

    .line 550
    .local v4, "ret":Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, "tokens":[Ljava/lang/String;
    array-length v5, v6

    .line 552
    .local v5, "tokenSize":I
    if-le v5, v10, :cond_1

    .line 553
    iget-object v7, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 556
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 563
    .local v3, "resources":Landroid/content/res/Resources;
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 568
    .local v2, "resId":I
    if-ne v5, v8, :cond_2

    .line 569
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 575
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "resId":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    const-string v7, "mediatek.DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseString return string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 557
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "mediatek.DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseString can not find pakcage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "mediatek.DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid format of propery string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "resId":I
    :cond_2
    new-array v7, v10, [Ljava/lang/Object;

    aget-object v8, v6, v8

    aput-object v8, v7, v11

    invoke-virtual {v3, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSingleItem:Z

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
