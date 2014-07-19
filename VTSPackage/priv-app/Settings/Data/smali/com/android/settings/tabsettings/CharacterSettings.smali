.class public Lcom/android/settings/tabsettings/CharacterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CharacterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final AUDIO_PROFILE_KEY:Ljava/lang/String;

.field private static final KEY_CALL_AND_MSG:Ljava/lang/String; = "call_and_msg"

.field private static final KEY_LOCK_AND_SCREEN:Ljava/lang/String; = "lock_and_screen"

.field private static final KEY_LOCK_FACE_DETECTION_ENABLE:Ljava/lang/String; = "face_detection_enable"

.field private static final KEY_LONG_MENU_ACTIVE_VOICE:Ljava/lang/String; = "long_menu_active_voice"

.field private static final KEY_MERCURY_KEYBOARD:Ljava/lang/String; = "mercury_keyboard"

.field private static final KEY_PIN_SCROLL:Ljava/lang/String; = "pin_scroll"

.field private static final KEY_POCKET_MODE:Ljava/lang/String; = "pocket_mode"

.field private static final KEY_RINGTONE_WEAKEN:Ljava/lang/String; = "ringtone_weaken"

.field private static final KEY_SLIDE_UNLOCK:Ljava/lang/String; = "slide_unlock"

.field private static final KEY_SMART_CALLING:Ljava/lang/String; = "smart_calling"

.field private static final KEY_SMART_CALL_ANSWER:Ljava/lang/String; = "smart_call_answer"

.field public static final KEY_SMART_CAR:Ljava/lang/String; = "smartscene_car"

.field public static final KEY_SMART_HOME_ROADCONDITION:Ljava/lang/String; = "smartscene_home_roadcondition"

.field public static final KEY_SMART_HOME_WEATHER:Ljava/lang/String; = "smartscene_home_weather"

.field private static final KEY_SMART_ROTATION:Ljava/lang/String; = "smart_rotation"

.field public static final KEY_SMART_SCENE:Ljava/lang/String; = "smartscene"

.field private static final KEY_SMART_SCENE_PREFERENCE:Ljava/lang/String; = "smart_scene_preference"

.field private static final KEY_SMART_STANDBY_ENABLE:Ljava/lang/String; = "smart_standby_enable"

.field private static final KEY_SWING_LOCK:Ljava/lang/String; = "swing_lock"

.field private static final KEY_SYS_AND_KEY:Ljava/lang/String; = "sys_and_key"

.field private static final KEY_WIDE_TOUCH:Ljava/lang/String; = "wide_touch"

.field private static final SCREEN_SMART_ROTATION:Ljava/lang/String; = "screen_smart_rotation"

.field private static final SIDE_KEY_BACKLIGHT:Ljava/lang/String; = "side_key_backlight"

.field private static final SMART_ROTATION_DEFAULT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CharacterSettings"


# instance fields
.field private mCallAndMsg:Landroid/preference/PreferenceCategory;

.field private mLockAndScreen:Landroid/preference/PreferenceCategory;

.field private mLongMenuActiveVoice:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mMercuryKeyboard:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mPinScroll:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mPocketMode:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mRingtoneWeaken:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSideKeyBacklight:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mSlideUnLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mSmartCallAnswer:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mSmartCalling:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mSmartHomeRoadcondition:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mSmartHomeWeather:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mSmartRotatinObserver:Landroid/database/ContentObserver;

.field private mSmartRotationPref:Landroid/preference/ListPreference;

.field private mSmartScene:Landroid/preference/PreferenceCategory;

.field private mSmartSceneCar:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mSmartScenePreference:Landroid/preference/Preference;

.field private mSmartStandbyEnable:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mSwingLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mSysAndKey:Landroid/preference/PreferenceCategory;

.field private mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

.field private mWideTouchObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/tabsettings/CharacterSettings;->AUDIO_PROFILE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 110
    new-instance v0, Lcom/android/settings/tabsettings/CharacterSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/tabsettings/CharacterSettings$1;-><init>(Lcom/android/settings/tabsettings/CharacterSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 127
    new-instance v0, Lcom/android/settings/tabsettings/CharacterSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/tabsettings/CharacterSettings$2;-><init>(Lcom/android/settings/tabsettings/CharacterSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouchObserver:Landroid/database/ContentObserver;

    .line 147
    new-instance v0, Lcom/android/settings/tabsettings/CharacterSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/tabsettings/CharacterSettings$3;-><init>(Lcom/android/settings/tabsettings/CharacterSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotatinObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tabsettings/CharacterSettings;)Lcom/android/settings/tabsettings/EnhanceSwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CharacterSettings;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPinScroll:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/tabsettings/CharacterSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CharacterSettings;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/tabsettings/CharacterSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CharacterSettings;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/tabsettings/CharacterSettings;)Lcom/android/settings/tabsettings/EnhanceSwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CharacterSettings;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/tabsettings/CharacterSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CharacterSettings;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/tabsettings/CharacterSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CharacterSettings;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/tabsettings/CharacterSettings;->updateSmartRotationPreference(I)V

    return-void
.end method

.method private getSmartRoationValue()I
    .locals 4

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_smart_rotation"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 465
    .local v0, "currentValue":I
    return v0
.end method

.method private setSlideUnlock(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 678
    const/16 v2, 0x30

    .line 679
    .local v2, "setVal":B
    if-eqz p1, :cond_0

    const/16 v2, 0x31

    .line 681
    :cond_0
    const/4 v0, 0x0

    .line 683
    .local v0, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v3, "/sys/board_properties/tpd_suspend_status"

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 688
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v0, v1

    .line 692
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 689
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 690
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 685
    :catch_1
    move-exception v3

    .line 688
    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 689
    :catch_2
    move-exception v3

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v3

    .line 688
    :goto_2
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 689
    :cond_3
    :goto_3
    throw v3

    :catch_3
    move-exception v4

    goto :goto_3

    .line 687
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 685
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private slideUnlockEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "slide_unlock_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 672
    .local v0, "val":I
    if-ne v0, v1, :cond_0

    .line 673
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private updateSmartRotation()V
    .locals 0

    .prologue

    return-void
.end method

.method private updateSmartRotation_def()V
    .locals 4

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_smart_rotation"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 472
    .local v0, "value":I
    invoke-direct {p0, v0}, Lcom/android/settings/tabsettings/CharacterSettings;->updateSmartRotationPreference(I)V

    .line 474
    return-void
.end method

.method private updateSmartRotationPreference(I)V
    .locals 0
    .param p1, "currentSmartRotation"    # I

    .prologue

    return-void
    
.end method

.method private updateSmartRotationPreference_def(I)V
    .locals 6
    .param p1, "currentSmartRotation"    # I

    .prologue
    .line 509
    const-string v3, "CharacterSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartRotationPreference="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v3, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    if-nez v3, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v3, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 512
    invoke-direct {p0, p1}, Lcom/android/settings/tabsettings/CharacterSettings;->updateSmartRotationPreferenceDescription(I)V

    .line 513
    iget-object v3, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 514
    .local v1, "dlg":Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 517
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 518
    .local v2, "listview":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 520
    .local v0, "checkedItem":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    .line 521
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 522
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private updateSmartRotationPreferenceDescription(I)V
    .locals 8
    .param p1, "currentSmartRotation"    # I

    .prologue

    return-void

.end method

.method private updateSmartRotationPreferenceDescription_def(I)V
    .locals 8
    .param p1, "currentSmartRotation"    # I

    .prologue
    .line 477
    iget-object v3, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    .line 479
    .local v3, "preference":Landroid/preference/ListPreference;
    if-gez p1, :cond_0

    .line 481
    const-string v5, ""

    .line 505
    .local v5, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 506
    return-void

    .line 483
    .end local v5    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 484
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 485
    .local v6, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-nez v7, :cond_2

    .line 486
    :cond_1
    const-string v5, ""

    .restart local v5    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 488
    .end local v5    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 489
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_4

    .line 490
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 491
    .local v4, "rotationMode":I
    if-ne p1, v4, :cond_3

    .line 492
    move v0, v2

    .line 489
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 496
    .end local v4    # "rotationMode":I
    :cond_4
    array-length v7, v1

    if-eqz v7, :cond_5

    .line 497
    aget-object v7, v1, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 499
    .end local v5    # "summary":Ljava/lang/String;
    :cond_5
    const-string v5, ""

    .restart local v5    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 639
    iget-object v3, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCallAnswer:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v3, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_call_answer"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    .line 641
    .local v0, "value":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCallAnswer:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 644
    .end local v0    # "value":Z
    :cond_0
    iget-object v3, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCalling:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v3, :cond_1

    .line 645
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pref_key_smart_call_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    move v0, v1

    .line 646
    .restart local v0    # "value":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCalling:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    #invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 649
    .end local v0    # "value":Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mMercuryKeyboard:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v3, :cond_2

    .line 650
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pref_key_mercury_keyboard_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_5

    move v0, v1

    .line 651
    .restart local v0    # "value":Z
    :goto_2
    iget-object v1, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mMercuryKeyboard:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    #invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 653
    .end local v0    # "value":Z
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 640
    goto :goto_0

    :cond_4
    move v0, v2

    .line 645
    goto :goto_1

    :cond_5
    move v0, v2

    .line 650
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    const-string v4, "CharacterSettings"

    const-string v7, "onCreate"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const v4, 0x7f06000f

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 167
    const-string v4, "sys_and_key"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSysAndKey:Landroid/preference/PreferenceCategory;

    .line 168
    const-string v4, "call_and_msg"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mCallAndMsg:Landroid/preference/PreferenceCategory;

    .line 169
    const-string v4, "lock_and_screen"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mLockAndScreen:Landroid/preference/PreferenceCategory;

    .line 172
    const-string v4, "audioprofile"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 173
    const-string v4, "pocket_mode"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPocketMode:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 174
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPocketMode:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPocketMode:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 176
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPocketMode:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->getPocketEnable(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 177
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPocketMode:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    :cond_0
    const-string v4, "ringtone_weaken"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mRingtoneWeaken:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 181
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mRingtoneWeaken:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mRingtoneWeaken:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 183
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mRingtoneWeaken:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->getWeakenEnable(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 184
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mRingtoneWeaken:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    :cond_1
    const-string v4, "smart_call_answer"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCallAnswer:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 189
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCallAnswer:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_2

    .line 190
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCallAnswer:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 191
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCallAnswer:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "smart_call_answer"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_12

    move v3, v5

    .line 193
    .local v3, "value":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCallAnswer:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 199
    .end local v3    # "value":Z
    :cond_2
    const-string v4, "smart_calling"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCalling:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 201
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCalling:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_3

    .line 202
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCalling:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 203
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCalling:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "pref_key_smart_call_on"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_13

    move v3, v5

    .line 206
    .restart local v3    # "value":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCalling:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    #invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v3    # "value":Z
    :cond_3
    :goto_2
    const-string v4, "mercury_keyboard"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mMercuryKeyboard:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 217
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mMercuryKeyboard:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_4

    .line 218
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mMercuryKeyboard:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 219
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mMercuryKeyboard:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "pref_key_mercury_keyboard_on"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_14

    move v3, v5

    .line 222
    .restart local v3    # "value":Z
    :goto_3
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mMercuryKeyboard:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    #invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    .end local v3    # "value":Z
    :cond_4
    :goto_4
    const-string v4, "slide_unlock"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSlideUnLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 232
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSlideUnLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_5

    .line 233
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSlideUnLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 237
    :try_start_2
    invoke-direct {p0}, Lcom/android/settings/tabsettings/CharacterSettings;->slideUnlockEnabled()Z

    move-result v3

    .line 238
    .restart local v3    # "value":Z
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSlideUnLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 239
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSlideUnLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 248
    .end local v3    # "value":Z
    :cond_5
    :goto_5
    const-string v4, "swing_lock"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSwingLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 249
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSwingLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_6

    .line 250
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSwingLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 254
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "swing_lock_enabled"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_15

    move v3, v5

    .line 255
    .restart local v3    # "value":Z
    :goto_6
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSwingLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 256
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSwingLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 266
    .end local v3    # "value":Z
    :cond_6
    :goto_7
    const-string v4, "smart_scene_preference"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartScenePreference:Landroid/preference/Preference;

    .line 268
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartScenePreference:Landroid/preference/Preference;

    if-eqz v4, :cond_7

    .line 269
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartScenePreference:Landroid/preference/Preference;

    new-instance v7, Lcom/android/settings/tabsettings/CharacterSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/tabsettings/CharacterSettings$4;-><init>(Lcom/android/settings/tabsettings/CharacterSettings;)V

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 285
    :cond_7
    const-string v4, "smart_standby_enable"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartStandbyEnable:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 286
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartStandbyEnable:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_8

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "smart_standby_enable"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_16

    move v2, v5

    .line 290
    .local v2, "enable":Z
    :goto_8
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartStandbyEnable:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 291
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartStandbyEnable:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 297
    .end local v2    # "enable":Z
    :cond_8
    const-string v4, "wide_touch"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 298
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_9

    .line 299
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 303
    :try_start_4
    iget-object v7, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "total_wide_touch"

    invoke-static {v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_17

    move v4, v5

    :goto_9
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 305
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 315
    :cond_9
    :goto_a
    const-string v4, "side_key_backlight"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSideKeyBacklight:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 316
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSideKeyBacklight:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_a

    .line 317
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSideKeyBacklight:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 321
    :try_start_5
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSideKeyBacklight:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "side_key_backlight"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_18

    :goto_b
    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 323
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSideKeyBacklight:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 332
    :cond_a
    :goto_c
    const-string v4, "long_menu_active_voice"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mLongMenuActiveVoice:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 333
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mLongMenuActiveVoice:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_b

    .line 334
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mLongMenuActiveVoice:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 345
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mLockAndScreen:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mLongMenuActiveVoice:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    :cond_b
    const-string v4, "pin_scroll"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPinScroll:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 350
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPinScroll:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_c

    .line 351
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPinScroll:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 353
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/pinscroll/PinScroll;->isSupport(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 354
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPinScroll:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/pinscroll/PinScroll;->isOn(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 355
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPinScroll:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    :cond_c
    :goto_d
    const-string v4, "smart_rotation"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    .line 364
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    if-eqz v4, :cond_d

    .line 365
    invoke-direct {p0}, Lcom/android/settings/tabsettings/CharacterSettings;->getSmartRoationValue()I

    move-result v0

    .line 367
    .local v0, "currentSmartRoation":I
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0, v0}, Lcom/android/settings/tabsettings/CharacterSettings;->updateSmartRotationPreferenceDescription(I)V

    .line 369
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 381
    .end local v0    # "currentSmartRoation":I
    :cond_d
    const-string v4, "smartscene"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartScene:Landroid/preference/PreferenceCategory;

    .line 383
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartScene:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_e

    .line 384
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartScene:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    :cond_e
    const-string v4, "smartscene_home_weather"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartHomeWeather:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 387
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartHomeWeather:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_f

    .line 406
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartScene:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartHomeWeather:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    :cond_f
    const-string v4, "smartscene_home_roadcondition"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartHomeRoadcondition:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 411
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartHomeRoadcondition:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_10

    .line 430
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSysAndKey:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartHomeRoadcondition:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 434
    :cond_10
    const-string v4, "smartscene_car"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartSceneCar:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    .line 436
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartSceneCar:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v4, :cond_11

    .line 454
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartScene:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartSceneCar:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 458
    :cond_11
    return-void

    :cond_12
    move v3, v6

    .line 192
    goto/16 :goto_0

    :cond_13
    move v3, v6

    .line 205
    goto/16 :goto_1

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCalling:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    #invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_14
    move v3, v6

    .line 221
    goto/16 :goto_3

    .line 223
    :catch_1
    move-exception v1

    .line 224
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mMercuryKeyboard:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    #invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 241
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSlideUnLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_5

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_15
    move v3, v6

    .line 254
    goto/16 :goto_6

    .line 257
    :catch_3
    move-exception v1

    .line 258
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSwingLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_7

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_16
    move v2, v6

    .line 288
    goto/16 :goto_8

    :cond_17
    move v4, v6

    .line 303
    goto/16 :goto_9

    .line 306
    :catch_4
    move-exception v1

    .line 307
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_a

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_18
    move v5, v6

    .line 321
    goto/16 :goto_b

    .line 324
    :catch_5
    move-exception v1

    .line 325
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSideKeyBacklight:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_c

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_19
    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mCallAndMsg:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPinScroll:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 657
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 660
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotatinObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 668
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 530
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPocketMode:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_5

    .line 532
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPocketMode:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->setPocketEnable(ZLandroid/content/Context;)V

    .line 583
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPinScroll:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_1

    .line 584
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mPinScroll:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_22

    move v1, v3

    .line 585
    .local v1, "value":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pin_scroll"

    if-eqz v1, :cond_23

    move v2, v3

    :goto_3
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    .end local v1    # "value":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartHomeWeather:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_25

    .line 593
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartHomeWeather:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_24

    move v1, v3

    .line 594
    .restart local v1    # "value":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "smart_scene_weather_forecast_support"

    if-eqz v1, :cond_2

    move v4, v3

    :cond_2
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 608
    .end local v1    # "value":Z
    :cond_3
    :goto_5
    return v3

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    move v2, v4

    .line 532
    goto :goto_0

    .line 533
    :cond_5
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mRingtoneWeaken:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_7

    .line 535
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mRingtoneWeaken:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->setWeakeEnable(ZLandroid/content/Context;)V

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_6

    .line 536
    :cond_7
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCallAnswer:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_a

    .line 537
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCallAnswer:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_8

    move v1, v3

    .line 538
    .restart local v1    # "value":Z
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_call_answer"

    if-eqz v1, :cond_9

    move v2, v3

    :goto_8
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v1    # "value":Z
    :cond_8
    move v1, v4

    .line 537
    goto :goto_7

    .restart local v1    # "value":Z
    :cond_9
    move v2, v4

    .line 538
    goto :goto_8

    .line 539
    .end local v1    # "value":Z
    :cond_a
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCalling:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_d

    .line 540
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartCalling:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_b

    move v1, v3

    .line 541
    .restart local v1    # "value":Z
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pref_key_smart_call_on"

    if-eqz v1, :cond_c

    move v2, v3

    :goto_a
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v1    # "value":Z
    :cond_b
    move v1, v4

    .line 540
    goto :goto_9

    .restart local v1    # "value":Z
    :cond_c
    move v2, v4

    .line 541
    goto :goto_a

    .line 542
    .end local v1    # "value":Z
    :cond_d
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mMercuryKeyboard:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_10

    .line 543
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mMercuryKeyboard:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_e

    move v1, v3

    .line 544
    .restart local v1    # "value":Z
    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pref_key_mercury_keyboard_on"

    if-eqz v1, :cond_f

    move v2, v3

    :goto_c
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v1    # "value":Z
    :cond_e
    move v1, v4

    .line 543
    goto :goto_b

    .restart local v1    # "value":Z
    :cond_f
    move v2, v4

    .line 544
    goto :goto_c

    .line 545
    .end local v1    # "value":Z
    :cond_10
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSlideUnLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_13

    .line 546
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSlideUnLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_11

    move v1, v3

    .line 547
    .restart local v1    # "value":Z
    :goto_d
    invoke-direct {p0, v1}, Lcom/android/settings/tabsettings/CharacterSettings;->setSlideUnlock(Z)V

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "slide_unlock_enabled"

    if-eqz v1, :cond_12

    move v2, v3

    :goto_e
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v1    # "value":Z
    :cond_11
    move v1, v4

    .line 546
    goto :goto_d

    .restart local v1    # "value":Z
    :cond_12
    move v2, v4

    .line 548
    goto :goto_e

    .line 549
    .end local v1    # "value":Z
    :cond_13
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSwingLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_16

    .line 550
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSwingLock:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_14

    move v1, v3

    .line 551
    .restart local v1    # "value":Z
    :goto_f
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "swing_lock_enabled"

    if-eqz v1, :cond_15

    move v2, v3

    :goto_10
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v1    # "value":Z
    :cond_14
    move v1, v4

    .line 550
    goto :goto_f

    .restart local v1    # "value":Z
    :cond_15
    move v2, v4

    .line 551
    goto :goto_10

    .line 552
    .end local v1    # "value":Z
    :cond_16
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartStandbyEnable:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_18

    .line 553
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartStandbyEnable:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartStandbyEnable:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_17

    move v1, v3

    .line 554
    .local v1, "value":I
    :goto_11
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "smart_standby_enable"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v1    # "value":I
    :cond_17
    move v1, v4

    .line 553
    goto :goto_11

    .line 555
    :cond_18
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_1b

    .line 556
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_19

    move v1, v3

    .line 557
    .local v1, "value":Z
    :goto_12
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "total_wide_touch"

    if-eqz v1, :cond_1a

    move v2, v3

    :goto_13
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v1    # "value":Z
    :cond_19
    move v1, v4

    .line 556
    goto :goto_12

    .restart local v1    # "value":Z
    :cond_1a
    move v2, v4

    .line 557
    goto :goto_13

    .line 558
    .end local v1    # "value":Z
    :cond_1b
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSideKeyBacklight:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_1e

    .line 559
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSideKeyBacklight:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1c

    move v1, v3

    .line 560
    .restart local v1    # "value":Z
    :goto_14
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "side_key_backlight"

    if-eqz v1, :cond_1d

    move v2, v3

    :goto_15
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v1    # "value":Z
    :cond_1c
    move v1, v4

    .line 559
    goto :goto_14

    .restart local v1    # "value":Z
    :cond_1d
    move v2, v4

    .line 560
    goto :goto_15

    .line 562
    .end local v1    # "value":Z
    :cond_1e
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mLongMenuActiveVoice:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_21

    .line 563
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mLongMenuActiveVoice:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1f

    move v1, v3

    .line 564
    .restart local v1    # "value":Z
    :goto_16
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "levoice_enable_menu"

    if-eqz v1, :cond_20

    move v2, v3

    :goto_17
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v1    # "value":Z
    :cond_1f
    move v1, v4

    .line 563
    goto :goto_16

    .restart local v1    # "value":Z
    :cond_20
    move v2, v4

    .line 564
    goto :goto_17

    .line 568
    .end local v1    # "value":Z
    :cond_21
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotationPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 570
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 572
    .local v1, "value":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_smart_rotation"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 574
    invoke-direct {p0, v1}, Lcom/android/settings/tabsettings/CharacterSettings;->updateSmartRotationPreferenceDescription(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "CharacterSettings"

    const-string v5, "could not persist smart rotation setting"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "value":I
    :cond_22
    move v1, v4

    .line 584
    goto/16 :goto_2

    .local v1, "value":Z
    :cond_23
    move v2, v4

    .line 585
    goto/16 :goto_3

    .end local v1    # "value":Z
    :cond_24
    move v1, v4

    .line 593
    goto/16 :goto_4

    .line 596
    :cond_25
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartHomeRoadcondition:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_28

    .line 598
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartHomeRoadcondition:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_27

    move v1, v3

    .line 599
    .restart local v1    # "value":Z
    :goto_18
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "smart_scene_traffic_support"

    if-eqz v1, :cond_26

    move v4, v3

    :cond_26
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .end local v1    # "value":Z
    :cond_27
    move v1, v4

    .line 598
    goto :goto_18

    .line 601
    :cond_28
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartSceneCar:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    if-ne p1, v2, :cond_3

    .line 603
    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartSceneCar:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2a

    move v1, v3

    .line 604
    .restart local v1    # "value":Z
    :goto_19
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "smart_scene_car_mode_support"

    if-eqz v1, :cond_29

    move v4, v3

    :cond_29
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .end local v1    # "value":Z
    :cond_2a
    move v1, v4

    .line 603
    goto :goto_19
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 613
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 614
    const-string v0, "CharacterSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-direct {p0}, Lcom/android/settings/tabsettings/CharacterSettings;->updateSmartRotation()V

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_smart_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSmartRotatinObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 625
    invoke-direct {p0}, Lcom/android/settings/tabsettings/CharacterSettings;->updateState()V

    .line 626
    iget-object v0, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "total_wide_touch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 632
    iget-object v0, p0, Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 635
    return-void
.end method
