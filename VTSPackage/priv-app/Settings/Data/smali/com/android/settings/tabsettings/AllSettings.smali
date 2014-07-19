.class public Lcom/android/settings/tabsettings/AllSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AllSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final ATTACH_TIME_OUT_LENGTH:I = 0x1388

.field private static final DETACH_TIME_OUT_LENGTH:I = 0x1388

.field private static final EVENT_ATTACH_TIME_OUT:I = 0x7d1

.field private static final EVENT_DATA_CONNECTION_RESULT:I = 0x7da

.field private static final EVENT_DETACH_TIME_OUT:I = 0x7d0

.field public static final EXTRA_CLEAR_UI_OPTIONS:Ljava/lang/String; = "settings:remove_ui_options"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final IMAGE_GRAY:I = 0x4b

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final META_DATA_KEY_HEADER_ID:Ljava/lang/String; = "com.android.settings.TOP_LEVEL_HEADER_ID"

.field private static final META_DATA_KEY_PARENT_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.PARENT_FRAGMENT_CLASS"

.field private static final META_DATA_KEY_PARENT_TITLE:Ljava/lang/String; = "com.android.settings.PARENT_FRAGMENT_TITLE"

.field private static final ORIGINAL_IMAGE:I = 0xff

.field private static final SAVE_KEY_CURRENT_HEADER:Ljava/lang/String; = "com.android.settings.CURRENT_HEADER"

.field private static final SAVE_KEY_PARENT_HEADER:Ljava/lang/String; = "com.android.settings.PARENT_HEADER"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private adapter:Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

.field private mActivity:Landroid/preference/PreferenceActivity;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDataTimerHandler:Landroid/os/Handler;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field private mGprsTargSim:Z

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiOnly:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mList:Landroid/widget/ListView;

.field private mListeningToAccountUpdates:Z

.field protected mNextButton:Landroid/widget/Button;

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mSiminfoReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchDialog:Landroid/app/AlertDialog;

.field private mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

.field private mTopLevelHeaderId:I

.field private mWaitingDialog:Landroid/app/ProgressDialog;

.field private manager:Landroid/telephony/TelephonyManager;

.field private simStateCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 146
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->SETTINGS_FOR_RESTRICTED:[I

    .line 179
    iput-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mGprsTargSim:Z

    .line 196
    new-instance v0, Lcom/android/settings/tabsettings/AllSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tabsettings/AllSettings$1;-><init>(Lcom/android/settings/tabsettings/AllSettings;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mDataTimerHandler:Landroid/os/Handler;

    .line 218
    new-instance v0, Lcom/android/settings/tabsettings/AllSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/tabsettings/AllSettings$2;-><init>(Lcom/android/settings/tabsettings/AllSettings;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 299
    iput-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mIsWifiOnly:Z

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/tabsettings/AllSettings;->simStateCode:I

    .line 317
    new-instance v0, Lcom/android/settings/tabsettings/AllSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/tabsettings/AllSettings$3;-><init>(Lcom/android/settings/tabsettings/AllSettings;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    .line 944
    return-void

    .line 146
    nop

    :array_0
    .array-data 4
        0x7f0b0383
        0x7f0b0385
        0x7f0b0388
        0x7f0b0389
        0x7f0b038b
        0x7f0b0397
        0x7f0b038e
        0x7f0b039a
        0x7f0b039b
        0x7f0b039d
        0x7f0b039c
        0x7f0b0399
        0x7f0b0391
        0x7f0b03a2
        0x7f0b039e
        0x7f0b0395
        0x7f0b0396
        0x7f0b03a0
        0x7f0b03a1
        0x7f0b03a6
        0x7f0b03a4
        0x7f0b038f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/tabsettings/AllSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/AllSettings;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/tabsettings/AllSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/AllSettings;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/tabsettings/AllSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/tabsettings/AllSettings;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/settings/tabsettings/AllSettings;->updateSimState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/tabsettings/AllSettings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/AllSettings;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/tabsettings/AllSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/tabsettings/AllSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/settings/tabsettings/AllSettings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/tabsettings/AllSettings;)Landroid/preference/PreferenceActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/AllSettings;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/tabsettings/AllSettings;Lcom/android/settings/tabsettings/SimIconsListView$SimItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/tabsettings/AllSettings;
    .param p1, "x1"    # Lcom/android/settings/tabsettings/SimIconsListView$SimItem;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/settings/tabsettings/AllSettings;->switchDataConnectionMode(Lcom/android/settings/tabsettings/SimIconsListView$SimItem;)V

    return-void
.end method

.method private createDialog(Landroid/view/View;I)Landroid/app/AlertDialog;
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1474
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1475
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1476
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 1477
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 1478
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1479
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/tabsettings/AllSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/tabsettings/AllSettings$8;-><init>(Lcom/android/settings/tabsettings/AllSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1487
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 1491
    .local v6, "alertDialog":Landroid/app/AlertDialog;
    return-object v6
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 913
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 915
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 932
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 916
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/tabsettings/AllSettings;->mTopLevelHeaderId:I

    .line 917
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/tabsettings/AllSettings;->mFragmentClass:Ljava/lang/String;

    .line 920
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 921
    .local v2, "parentHeaderTitleRes":I
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, "parentFragmentClass":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 923
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 924
    iget-object v3, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 925
    if-eqz v2, :cond_0

    .line 926
    iget-object v3, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 929
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "parentFragmentClass":Ljava/lang/String;
    .end local v2    # "parentHeaderTitleRes":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1518
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1519
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1520
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1522
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private hasProperThemeCenter()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1658
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.lenovo.themecenter"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1659
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1660
    .local v2, "ver":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v5, 0x31

    if-lt v4, v5, :cond_0

    const/4 v3, 0x1

    .line 1664
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "ver":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 1661
    :catch_0
    move-exception v0

    .line 1662
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 541
    if-eqz p1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 543
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 545
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 550
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 17
    .param p2, "headerIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 851
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/tabsettings/AllSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v14}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    .line 852
    .local v5, "accountTypes":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    array-length v14, v5

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 853
    .local v3, "accountHeaders":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object v7, v5

    .local v7, "arr$":[Ljava/lang/String;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v4, v7, v10

    .line 854
    .local v4, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/tabsettings/AllSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v14, v15, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 855
    .local v11, "label":Ljava/lang/CharSequence;
    if-nez v11, :cond_0

    .line 853
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 859
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 860
    .local v6, "accounts":[Landroid/accounts/Account;
    array-length v14, v6

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/tabsettings/AllSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v14, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const/4 v13, 0x1

    .line 862
    .local v13, "skipToAccount":Z
    :goto_2
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 863
    .local v2, "accHeader":Landroid/preference/PreferenceActivity$Header;
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 864
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v14, :cond_1

    .line 865
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 867
    :cond_1
    if-eqz v13, :cond_4

    .line 868
    const v14, 0x7f090a7e

    iput v14, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 869
    const v14, 0x7f090a7e

    iput v14, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 870
    const-class v14, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 871
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 873
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 875
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 890
    :cond_2
    :goto_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 860
    .end local v2    # "accHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v13    # "skipToAccount":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 878
    .restart local v2    # "accHeader":Landroid/preference/PreferenceActivity$Header;
    .restart local v13    # "skipToAccount":Z
    :cond_4
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 879
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 880
    const-class v14, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 881
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 882
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v14}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v14

    if-nez v14, :cond_2

    .line 886
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account_label"

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 894
    .end local v2    # "accHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v6    # "accounts":[Landroid/accounts/Account;
    .end local v11    # "label":Ljava/lang/CharSequence;
    .end local v13    # "skipToAccount":Z
    :cond_5
    new-instance v14, Lcom/android/settings/tabsettings/AllSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/tabsettings/AllSettings$7;-><init>(Lcom/android/settings/tabsettings/AllSettings;)V

    invoke-static {v3, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 901
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceActivity$Header;

    .line 902
    .local v8, "header":Landroid/preference/PreferenceActivity$Header;
    add-int/lit8 v9, p2, 0x1

    .end local p2    # "headerIndex":I
    .local v9, "headerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 p2, v9

    .end local v9    # "headerIndex":I
    .restart local p2    # "headerIndex":I
    goto :goto_4

    .line 904
    .end local v8    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/tabsettings/AllSettings;->mListeningToAccountUpdates:Z

    if-nez v14, :cond_7

    .line 905
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 906
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/tabsettings/AllSettings;->mListeningToAccountUpdates:Z

    .line 908
    :cond_7
    return p2
.end method

.method private switchDataConnectionMode(Lcom/android/settings/tabsettings/SimIconsListView$SimItem;)V
    .locals 7
    .param p1, "simItem"    # Lcom/android/settings/tabsettings/SimIconsListView$SimItem;

    .prologue
    const-wide/16 v5, 0x1388

    const/4 v4, 0x1

    .line 1494
    iget-boolean v1, p1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsSim:Z

    if-eqz v1, :cond_1

    .line 1495
    iput-boolean v4, p0, Lcom/android/settings/tabsettings/AllSettings;->mGprsTargSim:Z

    .line 1496
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mDataTimerHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1502
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1503
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "simid"

    iget-wide v2, p1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSimID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1504
    const-string v1, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1507
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1509
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 1510
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 1511
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090225

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1513
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1515
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1516
    return-void

    .line 1498
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mGprsTargSim:Z

    .line 1499
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mDataTimerHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mInLocalHeaderSwitch:Z

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/settings/tabsettings/AllSettings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mInLocalHeaderSwitch:Z

    .line 485
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 501
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-direct {v0, v7, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 503
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 504
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 506
    .local v5, "parentInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 507
    iget-object v7, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "fragmentClass":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 509
    .local v2, "fragmentTitle":Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 510
    .local v4, "parentHeader":Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 511
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 512
    iput-object v4, p0, Lcom/android/settings/tabsettings/AllSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 514
    invoke-direct {p0, v4}, Lcom/android/settings/tabsettings/AllSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 515
    iget v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/settings/tabsettings/AllSettings;->highlightHeader(I)V

    .line 517
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 518
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 520
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v1    # "fragmentClass":Ljava/lang/String;
    .end local v2    # "fragmentTitle":Ljava/lang/CharSequence;
    .end local v4    # "parentHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v3

    .line 523
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v9, "show"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v11, "eng"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 725
    .local v7, "showDev":Z
    const/4 v3, 0x0

    .line 727
    .local v3, "i":I
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 728
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_11

    .line 729
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 731
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v8

    .line 732
    .local v4, "id":I
    const v8, 0x7f0b038a

    if-ne v4, v8, :cond_4

    .line 733
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-static {v8, p1, v1}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    .line 831
    :cond_1
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v8, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 834
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 838
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_0

    .line 840
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v8, :cond_3

    invoke-static {v1}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 842
    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 844
    :cond_3
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 734
    :cond_4
    const v8, 0x7f0b0385

    if-ne v4, v8, :cond_5

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.wifi"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 737
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 746
    :cond_5
    const v8, 0x7f0b0388

    if-ne v4, v8, :cond_6

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 749
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 752
    :cond_6
    const v8, 0x7f0b0398

    if-ne v4, v8, :cond_7

    .line 754
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 757
    :cond_7
    const v8, 0x7f0b0389

    if-ne v4, v8, :cond_8

    .line 759
    const-string v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    .line 762
    .local v6, "netManager":Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v6}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 763
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 765
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .line 768
    .end local v6    # "netManager":Landroid/os/INetworkManagementService;
    :cond_8
    const v8, 0x7f0b0395

    if-ne v4, v8, :cond_9

    .line 769
    add-int/lit8 v2, v3, 0x1

    .line 770
    .local v2, "headerIndex":I
    invoke-direct {p0, p1, v2}, Lcom/android/settings/tabsettings/AllSettings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v3

    .line 771
    goto/16 :goto_1

    .end local v2    # "headerIndex":I
    :cond_9
    const v8, 0x7f0b039e

    if-ne v4, v8, :cond_b

    .line 772
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 775
    :cond_a
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 777
    :cond_b
    const v8, 0x7f0b03a5

    if-ne v4, v8, :cond_c

    .line 778
    if-nez v7, :cond_1

    .line 780
    #invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 783
    :cond_c
    const v8, 0x7f0b038d

    if-eq v4, v8, :cond_1

    .line 787
    const v8, 0x7f0b038e

    if-ne v4, v8, :cond_d

    .line 789
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 791
    :cond_d
    const v8, 0x7f0b0392

    if-ne v4, v8, :cond_f

    .line 792
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.android.settings.SCHEDULE_POWER_ON_OFF_SETTING"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 795
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_e

    .line 796
    const-string v8, "Settings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apps.size()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 798
    :cond_e
    const-string v8, "Settings"

    const-string v9, "apps is null or app size is 0, remove SchedulePowerOnOff"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 802
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_f
    const v8, 0x7f0b0386

    if-ne v4, v8, :cond_1

    .line 822
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.wifi"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 826
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 848
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v4    # "id":I
    :cond_11
    return-void
.end method

.method private updateSimState()V
    .locals 2

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 442
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 443
    check-cast v0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->isSimManagementAvailable(Landroid/content/Context;)V

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 446
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->adapter:Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mFragmentClass:Ljava/lang/String;

    .line 591
    :cond_0
    :goto_0
    return-object v0

    .line 581
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 584
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 3

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1441
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    const v1, 0x7f060042

    iget-object v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mHeaders:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1444
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/tabsettings/AllSettings;->updateHeaderList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    :goto_0
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->adapter:Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    instance-of v0, v0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->adapter:Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1450
    :cond_0
    return-void

    .line 1445
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 1457
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 1458
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 1460
    invoke-virtual {p0}, Lcom/android/settings/tabsettings/AllSettings;->invalidateHeaders()V

    .line 1462
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 332
    check-cast p1, Landroid/preference/PreferenceActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    .line 333
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 337
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "settings:remove_ui_options"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setUiOptions(I)V

    .line 341
    :cond_0
    new-instance v1, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v1}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 342
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v4, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 343
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v4, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v4, v5}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 345
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    const-string v4, "development"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 347
    new-instance v1, Lcom/android/settings/tabsettings/AllSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/tabsettings/AllSettings$4;-><init>(Lcom/android/settings/tabsettings/AllSettings;)V

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 354
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/settings/tabsettings/AllSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 358
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 359
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mIsWifiOnly:Z

    .line 361
    invoke-direct {p0}, Lcom/android/settings/tabsettings/AllSettings;->getMetaData()V

    .line 362
    iput-boolean v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mInLocalHeaderSwitch:Z

    .line 363
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 364
    iput-boolean v3, p0, Lcom/android/settings/tabsettings/AllSettings;->mInLocalHeaderSwitch:Z

    .line 366
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    iget v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v1}, Lcom/android/settings/tabsettings/AllSettings;->highlightHeader(I)V

    .line 370
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    const v2, 0x7f0904fe

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 373
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 374
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.STOP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    if-eqz p1, :cond_2

    .line 386
    const-string v1, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 387
    const-string v1, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 391
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_3

    .line 393
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v5}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 396
    :cond_3
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_4

    .line 397
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v4, Lcom/android/settings/tabsettings/AllSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/tabsettings/AllSettings$5;-><init>(Lcom/android/settings/tabsettings/AllSettings;)V

    invoke-virtual {v1, v2, v5, v4}, Landroid/preference/PreferenceActivity;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 405
    :cond_4
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 406
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 407
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 409
    :cond_5
    return-void

    :cond_6
    move v1, v3

    .line 359
    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/tabsettings/AllSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 665
    const v7, 0x3040014

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 672
    .local v6, "view":Landroid/view/View;
    :goto_0
    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mList:Landroid/widget/ListView;

    .line 673
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    const v8, 0x7f060042

    invoke-virtual {v7, v8, v2}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 676
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->manager:Landroid/telephony/TelephonyManager;

    .line 677
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->manager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    iput v7, p0, Lcom/android/settings/tabsettings/AllSettings;->simStateCode:I

    .line 678
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "simStateCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/tabsettings/AllSettings;->simStateCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-direct {p0, v2}, Lcom/android/settings/tabsettings/AllSettings;->updateHeaderList(Ljava/util/List;)V

    .line 681
    iput-object v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mHeaders:Ljava/util/List;

    .line 682
    const-string v7, "Settings"

    const-string v8, "onBuildHeaders--------7"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v7, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    iget-object v9, p0, Lcom/android/settings/tabsettings/AllSettings;->mHeaders:Ljava/util/List;

    iget-object v10, p0, Lcom/android/settings/tabsettings/AllSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v7, v8, v9, v10}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V

    iput-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->adapter:Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    .line 684
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mList:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings;->adapter:Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 685
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 687
    const v7, 0x10202fe

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mNextButton:Landroid/widget/Button;

    .line 688
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mNextButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/settings/tabsettings/AllSettings$6;

    invoke-direct {v8, p0}, Lcom/android/settings/tabsettings/AllSettings$6;-><init>(Lcom/android/settings/tabsettings/AllSettings;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "extra_prefs_set_next_text"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 695
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "extra_prefs_set_next_text"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "buttonText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 697
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mNextButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 706
    .end local v1    # "buttonText":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/tabsettings/AllSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 707
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 708
    .local v5, "top":I
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 709
    .local v0, "bottom":I
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 710
    .local v3, "left":I
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 712
    .local v4, "right":I
    const/4 v5, 0x0

    .line 714
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v7, v3, v5, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 718
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    :cond_1
    return-object v6

    .line 667
    .end local v2    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    const v7, 0x109007c

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 700
    .restart local v1    # "buttonText":Ljava/lang/String;
    .restart local v2    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_3
    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 464
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 465
    const-string v0, "hanlhAllSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-boolean v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 479
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 600
    iget-object v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/tabsettings/AllSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "fragmentClass":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 602
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 603
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 604
    iget-object v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 605
    iget-object v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 606
    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 610
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1529
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->adapter:Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    if-eqz v6, :cond_2

    .line 1530
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->adapter:Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    invoke-virtual {v6, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 1531
    .local v2, "item":Ljava/lang/Object;
    instance-of v6, v2, Landroid/preference/PreferenceActivity$Header;

    if-eqz v6, :cond_2

    move-object v0, v2

    .line 1532
    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1533
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    const/4 v4, 0x0

    .line 1534
    .local v4, "revert":Z
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0396

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1535
    const/4 v4, 0x1

    .line 1540
    :cond_0
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0386

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1542
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1543
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    const-class v7, Lcom/android/settings/tabsettings/CharacterHelp;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1544
    const-string v6, "key"

    const-string v7, "wifi_switch_settings"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1545
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1551
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0394

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1552
    invoke-direct {p0}, Lcom/android/settings/tabsettings/AllSettings;->hasProperThemeCenter()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1553
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1556
    .local v5, "shortIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1557
    const-string v6, "com.lenovo.themecenter.main"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    const-string v6, "invoke_external"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1560
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1587
    .end local v5    # "shortIntent":Landroid/content/Intent;
    :goto_0
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0387

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    .line 1588
    const-string v6, "Settings"

    const-string v7, "onHeaderClick(dataconnection_settings)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_5

    .line 1652
    .end local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v2    # "item":Ljava/lang/Object;
    .end local v4    # "revert":Z
    :cond_2
    :goto_1
    return-void

    .line 1562
    .restart local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v2    # "item":Ljava/lang/Object;
    .restart local v4    # "revert":Z
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.lenovo.launcher.action.THEME_SETTING"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1563
    .restart local v5    # "shortIntent":Landroid/content/Intent;
    const-string v6, "EXTRA"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1564
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1582
    .end local v5    # "shortIntent":Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v6, v0, p3}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 1590
    :cond_5
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1594
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 1600
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->adapter:Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    # getter for: Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;
    invoke-static {v6}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->access$700(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;)Lcom/android/settings/dataconnection/DataEnabler;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->adapter:Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    # getter for: Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;
    invoke-static {v6}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->access$700(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;)Lcom/android/settings/dataconnection/DataEnabler;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/tabsettings/AllSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1606
    :cond_7
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    if-nez v6, :cond_8

    .line 1607
    new-instance v6, Lcom/android/settings/tabsettings/SimIconsListView;

    iget-object v7, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    const-string v8, "gprs_connection_sim_setting"

    invoke-direct {v6, v7, v8}, Lcom/android/settings/tabsettings/SimIconsListView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    .line 1609
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    new-instance v7, Lcom/android/settings/tabsettings/AllSettings$9;

    invoke-direct {v7, p0}, Lcom/android/settings/tabsettings/AllSettings$9;-><init>(Lcom/android/settings/tabsettings/AllSettings;)V

    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1636
    :cond_8
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1637
    .local v3, "parents":Landroid/view/ViewGroup;
    if-eqz v3, :cond_9

    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1638
    :cond_9
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    const v7, 0x7f090144

    invoke-direct {p0, v6, v7}, Lcom/android/settings/tabsettings/AllSettings;->createDialog(Landroid/view/View;I)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    .line 1639
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    invoke-virtual {v6}, Lcom/android/settings/tabsettings/SimIconsListView;->initSimList()V

    .line 1640
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    invoke-virtual {v6}, Lcom/android/settings/tabsettings/SimIconsListView;->notifyDataChange()V

    .line 1641
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1645
    .end local v3    # "parents":Landroid/view/ViewGroup;
    :cond_a
    if-eqz v4, :cond_b

    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v6, :cond_b

    .line 1646
    iget-object v6, p0, Lcom/android/settings/tabsettings/AllSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    invoke-direct {p0, v6}, Lcom/android/settings/tabsettings/AllSettings;->highlightHeader(I)V

    goto/16 :goto_1

    .line 1648
    :cond_b
    iput-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto/16 :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/tabsettings/AllSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 536
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 538
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 449
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 450
    const-string v1, "hanlhAllSettings"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 455
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 456
    check-cast v0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->pause()V

    .line 460
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 426
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 427
    const-string v1, "hanlhAllSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 430
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 431
    check-cast v1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    invoke-virtual {v1}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->resume()V

    .line 433
    check-cast v0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->isSimManagementAvailable(Landroid/content/Context;)V

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/android/settings/tabsettings/AllSettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 439
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 417
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 420
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 422
    :cond_1
    return-void
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v1, 0x0

    .line 489
    iget-boolean v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 490
    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 491
    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 494
    return-void
.end method
