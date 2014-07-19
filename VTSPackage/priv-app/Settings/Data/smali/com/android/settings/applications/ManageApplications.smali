.class public Lcom/android/settings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$PackageDeleteObserver;,
        Lcom/android/settings/applications/ManageApplications$DisableChanger;,
        Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;,
        Lcom/android/settings/applications/ManageApplications$ClearCacheObserver;,
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/settings/applications/ManageApplications$TabInfo;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field public static final APP_PRIVACY_SETTINGS:I = 0x17

.field public static final CLEAR_CACHE:I = 0x11

.field static final DEBUG:Z = false

.field public static final DEFAULT_SOFT_SETTING:I = 0x13

.field public static final DISABLE_SELECT_APP:I = 0xb

.field private static final DLG_MOVE_FAILED:I = 0x15

.field public static final ENABLE_SELECT_APP:I = 0xc

.field private static final EXTRA_DEFAULT_LIST_TYPE:Ljava/lang/String; = "defaultListType"

.field private static final EXTRA_RESET_DIALOG:Ljava/lang/String; = "resetDialog"

.field private static final EXTRA_SHOW_BACKGROUND:Ljava/lang/String; = "showBackground"

.field private static final EXTRA_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field public static final FILTER_APPS_ALL:I = 0x0

.field public static final FILTER_APPS_DISABLED:I = 0x3

.field public static final FILTER_APPS_SDCARD:I = 0x2

.field public static final FILTER_APPS_THIRD_PARTY:I = 0x1

.field public static final HANDLER_MSG_CHECK_NORMAL:I = -0x1

.field public static final HANDLER_MSG_CHECK_RUNNING:I = -0x2

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field public static final INSTALL_LOCAL:I = 0x16

.field static final LIST_TYPE_ALL:I = 0x3

.field static final LIST_TYPE_DISABLED:I = 0x4

.field static final LIST_TYPE_DOWNLOADED:I = 0x0

.field static final LIST_TYPE_RUNNING:I = 0x1

.field static final LIST_TYPE_SDCARD:I = 0x2

.field private static final MENU_OPTIONS_BASE:I = 0x0

.field public static final MOVE_TO_PHONE:I = 0x10

.field public static final MOVE_TO_SDCARD:I = 0xf

.field private static final PACKAGE_MOVE:I = 0x14

.field public static final RESET_APP_PREFERENCES:I = 0x8

.field public static final SELECT_ALL_DOWNLOAD_APP:I = 0xe

.field public static final SHOW_BACKGROUND_PROCESSES:I = 0x7

.field public static final SHOW_RUNNING_SERVICES:I = 0x6

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field public static final SOFT_PERMISSION:I = 0x12

.field public static final SORT_ORDER_ALPHA:I = 0x4

.field public static final SORT_ORDER_SIZE:I = 0x5

.field public static final STOP_ALL_APP:I = 0xd

.field public static final STOP_SELECT_APP:I = 0xa

.field static final TAG:Ljava/lang/String; = "ManageApplications"

.field public static final UNINSTALL_SELECT_APP:I = 0x9

.field static disable_total:I

.field private static mCount:I

.field private static sSdDescription:Ljava/lang/String;

.field public static selectall_flag:Z


# instance fields
.field private all_select_flag:Z

.field private disable_flag:Z

.field private enable_flag:Z

.field private flag_movetosd:Z

.field handler:Landroid/os/Handler;

.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mExtStoragePath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mNumTabs:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private movetosd_no:I

.field private movetosd_yes:I

.field private obj:Ljava/lang/Object;

.field private sd_select_flag:Z

.field private tabInfoContext:Landroid/content/Context;

.field private totalsd_num:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/applications/ManageApplications;->selectall_flag:Z

    .line 249
    sput v1, Lcom/android/settings/applications/ManageApplications;->mCount:I

    .line 2395
    sput v1, Lcom/android/settings/applications/ManageApplications;->disable_total:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 168
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 225
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 239
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->all_select_flag:Z

    .line 240
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->sd_select_flag:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->enable_flag:Z

    .line 242
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->disable_flag:Z

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->obj:Ljava/lang/Object;

    .line 247
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->flag_movetosd:Z

    .line 248
    iput v2, p0, Lcom/android/settings/applications/ManageApplications;->totalsd_num:I

    iput v2, p0, Lcom/android/settings/applications/ManageApplications;->movetosd_no:I

    iput v2, p0, Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I

    .line 250
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->handler:Landroid/os/Handler;

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 581
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 583
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    .line 2263
    new-instance v0, Lcom/android/settings/applications/ManageApplications$9;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$9;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mHandler:Landroid/os/Handler;

    .line 2357
    new-instance v0, Lcom/android/settings/applications/ManageApplications$10;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$10;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    .line 2441
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/applications/ManageApplications;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplications;->sd_select_flag:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/applications/ManageApplications;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplications;->all_select_flag:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/applications/ManageApplications;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/applications/ManageApplications;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplications;->enable_flag:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->totalsd_num:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/settings/applications/ManageApplications;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;
    .param p1, "x1"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/android/settings/applications/ManageApplications;->totalsd_num:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->movetosd_no:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/settings/applications/ManageApplications;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;
    .param p1, "x1"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/android/settings/applications/ManageApplications;->movetosd_no:I

    return p1
.end method

.method static synthetic access$2308(Lcom/android/settings/applications/ManageApplications;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->movetosd_no:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->movetosd_no:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/settings/applications/ManageApplications;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;
    .param p1, "x1"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I

    return p1
.end method

.method static synthetic access$2408(Lcom/android/settings/applications/ManageApplications;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/applications/ManageApplications;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->flag_movetosd:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/settings/applications/ManageApplications;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplications;->flag_movetosd:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/settings/applications/ManageApplications;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/applications/ManageApplications;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplications;->disable_flag:Z

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->sSdDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method private getSdDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2374
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 2375
    .local v3, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v3

    .line 2376
    .local v1, "len":I
    const-string v2, ""

    .line 2377
    .local v2, "sdDesc":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2378
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2379
    aget-object v4, v3, v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2385
    :cond_0
    return-object v2

    .line 2382
    :cond_1
    const-string v2, "error"

    .line 2377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isMenuExist(Landroid/view/Menu;I)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 2391
    if-nez p1, :cond_1

    .line 2393
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1352
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1353
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1356
    .local v0, "pa":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09081d

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1358
    return-void
.end method

.method private updateNumTabs()V
    .locals 2

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1331
    .local v0, "newNum":I
    :goto_0
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    if-eq v0, v1, :cond_0

    .line 1332
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    .line 1333
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 1337
    :cond_0
    return-void

    .line 1330
    .end local v0    # "newNum":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1648
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1649
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1650
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090841

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1651
    const v1, 0x7f090842

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1652
    const v1, 0x7f090843

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1653
    const v1, 0x7f0904fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1654
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1655
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1657
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2448
    const-string v1, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force stop package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    if-nez p1, :cond_0

    .line 2456
    :goto_0
    return-void

    .line 2452
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2454
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 2455
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1324
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1327
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1670
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1671
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1673
    .local v4, "mIPm":Landroid/content/pm/IPackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1675
    .local v3, "nm":Landroid/app/INotificationManager;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    .line 1676
    .local v6, "npm":Landroid/net/NetworkPolicyManager;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1678
    .local v5, "aom":Landroid/app/AppOpsManager;
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1679
    .local v7, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/settings/applications/ManageApplications$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ManageApplications$2;-><init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1736
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "nm":Landroid/app/INotificationManager;
    .end local v4    # "mIPm":Landroid/content/pm/IPackageManager;
    .end local v5    # "aom":Landroid/app/AppOpsManager;
    .end local v6    # "npm":Landroid/net/NetworkPolicyManager;
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1138
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1140
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 1142
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 1143
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 1144
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1145
    .local v8, "action":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1146
    .local v11, "defaultListType":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "classname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1148
    .local v9, "className":Ljava/lang/String;
    :goto_0
    if-nez v9, :cond_0

    .line 1149
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 1151
    :cond_0
    const-class v1, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1153
    :cond_1
    const/4 v11, 0x1

    .line 1164
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 1165
    const-string v1, "sortOrder"

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 1166
    const-string v1, "defaultListType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1167
    .local v13, "tmp":I
    const/4 v1, -0x1

    if-eq v13, v1, :cond_3

    move v11, v13

    .line 1168
    :cond_3
    const-string v1, "showBackground"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1171
    .end local v13    # "tmp":I
    :cond_4
    iput v11, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    .line 1173
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    .line 1175
    .local v10, "containerIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v10, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1177
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090866

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 1178
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090865

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 1181
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1182
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mExtStoragePath:Ljava/lang/String;

    .line 1183
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mExtStoragePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageApplications;->getSdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/applications/ManageApplications;->sSdDescription:Ljava/lang/String;

    .line 1185
    sget v1, Lcom/android/settings/applications/ManageApplications;->mCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/settings/applications/ManageApplications;->mCount:I

    .line 1186
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090849

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->handler:Landroid/os/Handler;

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;Landroid/os/Handler;)V

    .line 1189
    .local v0, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1193
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->sSdDescription:Ljava/lang/String;

    const/4 v4, 0x2

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->handler:Landroid/os/Handler;

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;Landroid/os/Handler;)V

    .line 1195
    .restart local v0    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    :cond_5
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09084a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->handler:Landroid/os/Handler;

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;Landroid/os/Handler;)V

    .line 1201
    .restart local v0    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090847

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->handler:Landroid/os/Handler;

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;Landroid/os/Handler;)V

    .line 1206
    .restart local v0    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090848

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->handler:Landroid/os/Handler;

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;Landroid/os/Handler;)V

    .line 1211
    .restart local v0    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    .line 1214
    return-void

    .line 1146
    .end local v0    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "containerIntent":Landroid/content/Intent;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1154
    .restart local v9    # "className":Ljava/lang/String;
    :cond_7
    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".StorageUse"

    invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1157
    :cond_8
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 1158
    const/4 v11, 0x3

    goto/16 :goto_1

    .line 1159
    :cond_9
    const-string v1, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1161
    const/4 v11, 0x3

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1362
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1365
    const/16 v0, 0x11

    const v1, 0x7f090165

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1368
    const/16 v0, 0x13

    const v1, 0x7f090168

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1371
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1373
    const/16 v0, 0x16

    const v1, 0x7f090169

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1381
    :cond_0
    const v0, 0x7f09083c

    invoke-interface {p1, v2, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1384
    const/4 v0, 0x2

    const v1, 0x7f09083d

    invoke-interface {p1, v2, v6, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1388
    const/4 v0, 0x6

    const v1, 0x7f09083e

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1391
    const/4 v0, 0x7

    const v1, 0x7f09083f

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1394
    const/16 v0, 0x8

    const v1, 0x7f090840

    invoke-interface {p1, v2, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1397
    const/16 v0, 0x17

    const v1, 0x7f090182

    invoke-interface {p1, v2, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1400
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1401
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 1222
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040072

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1224
    .local v2, "rootView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 1225
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 1227
    const v5, 0x7f0b0014

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 1228
    new-instance v0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    .line 1229
    .local v0, "adapter":Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1230
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1231
    const v5, 0x7f0b0015

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/PagerTabStrip;

    .line 1234
    .local v4, "tabs":Landroid/support/v4/view/PagerTabStrip;
    const v5, 0x7f0d001a

    #invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 1244
    instance-of v5, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 1245
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 1248
    :cond_0
    if-eqz p3, :cond_1

    const-string v5, "resetDialog"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1249
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->buildResetDialog()V

    .line 1252
    :cond_1
    if-nez p3, :cond_2

    .line 1254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1255
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1256
    .local v3, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget v5, v3, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    iget v6, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    if-ne v5, v6, :cond_3

    .line 1257
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1263
    .end local v1    # "i":I
    .end local v3    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_2
    return-object v2

    .line 1254
    .restart local v1    # "i":I
    .restart local v3    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1415
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1417
    sget v0, Lcom/android/settings/applications/ManageApplications;->mCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1418
    invoke-static {}, Lcom/android/settings/applications/ApplicationsState;->removeInstance()V

    .line 1419
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->exitBackgroundThread()V

    .line 1420
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->release()V

    .line 1421
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1422
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1423
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1424
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 1425
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 1426
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 1428
    :cond_0
    sget v0, Lcom/android/settings/applications/ManageApplications;->mCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/settings/applications/ManageApplications;->mCount:I

    .line 1430
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1431
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1411
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1313
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->detachView()V

    .line 1317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1320
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1664
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "tab"    # Lcom/android/settings/applications/ManageApplications$TabInfo;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2322
    .local p2, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 2323
    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 2324
    .local v0, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 2325
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 2327
    .end local v0    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 30
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1765
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v19

    .line 1767
    .local v19, "menuId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$TabInfo;->getListView()Landroid/widget/ListView;

    move-result-object v16

    .line 1769
    .local v16, "lv":Landroid/widget/ListView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 1771
    .local v5, "context":Landroid/content/Context;
    const/16 v26, 0x11

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 1772
    const-wide/16 v23, 0x0

    .line 1773
    .local v23, "total_size":J
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v26

    check-cast v26, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getEntriesList()Ljava/util/ArrayList;

    move-result-object v18

    .line 1775
    .local v18, "mEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 1776
    .local v20, "pm":Landroid/content/pm/PackageManager;
    new-instance v17, Lcom/android/settings/applications/ManageApplications$ClearCacheObserver;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/applications/ManageApplications$ClearCacheObserver;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    .line 1777
    .local v17, "mClearCacheObserver":Lcom/android/settings/applications/ManageApplications$ClearCacheObserver;
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1778
    .local v9, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v0, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1779
    iget-wide v0, v9, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    move-wide/from16 v26, v0

    add-long v23, v23, v26

    goto :goto_1

    .line 1767
    .end local v5    # "context":Landroid/content/Context;
    .end local v9    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "lv":Landroid/widget/ListView;
    .end local v17    # "mClearCacheObserver":Lcom/android/settings/applications/ManageApplications$ClearCacheObserver;
    .end local v18    # "mEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "total_size":J
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 1781
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "lv":Landroid/widget/ListView;
    .restart local v17    # "mClearCacheObserver":Lcom/android/settings/applications/ManageApplications$ClearCacheObserver;
    .restart local v18    # "mEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "total_size":J
    :cond_1
    move-wide/from16 v0, v23

    invoke-static {v5, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    .line 1782
    .local v25, "total_str":Ljava/lang/String;
    const v26, 0x7f090166

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v25, v27, v28

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    .line 2259
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "mClearCacheObserver":Lcom/android/settings/applications/ManageApplications$ClearCacheObserver;
    .end local v18    # "mEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "total_size":J
    .end local v25    # "total_str":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 2260
    const/16 v26, 0x1

    :goto_3
    return v26

    .line 1783
    :cond_3
    const/16 v26, 0x12

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 1784
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1785
    .local v14, "intent":Landroid/content/Intent;
    const-string v26, "com.lenovo.optimize"

    const-string v27, "com.lenovo.optimize.SoftPermissionActivity"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1786
    invoke-virtual {v5, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1787
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_4
    const/16 v26, 0x13

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 1788
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1789
    .local v12, "i":Landroid/content/Intent;
    const-string v26, "com.lenovo.optimize"

    const-string v27, "com.lenovo.optimize.DefaultSoftSettingActivity"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1790
    invoke-virtual {v5, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1791
    .end local v12    # "i":Landroid/content/Intent;
    :cond_5
    const/16 v26, 0x16

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 1792
    const/4 v8, 0x0

    .line 1793
    .local v8, "default_int":I
    const-string v26, "pm get-install-location"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1794
    .local v7, "defaltstr":Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_6

    .line 1795
    const/16 v26, 0x0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1798
    :cond_6
    new-instance v26, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f09016a

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a0069

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    new-instance v28, Lcom/android/settings/applications/ManageApplications$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/applications/ManageApplications$3;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1811
    .end local v7    # "defaltstr":Ljava/lang/String;
    .end local v8    # "default_int":I
    :cond_7
    const/16 v26, 0x4

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    const/16 v26, 0x5

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 1812
    :cond_8
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto/16 :goto_2

    .line 1816
    :cond_9
    const/16 v26, 0x6

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 1817
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v26

    if-eqz v26, :cond_2

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto/16 :goto_2

    .line 1821
    :cond_a
    const/16 v26, 0x7

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 1822
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v26

    if-eqz v26, :cond_2

    .line 1824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto/16 :goto_2

    .line 1826
    :cond_b
    const/16 v26, 0x8

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 1827
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->buildResetDialog()V

    goto/16 :goto_2

    .line 1829
    :cond_c
    const/16 v26, 0x9

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 1830
    const-string v26, "ManageApplications"

    const-string v27, "UNINSTALL_SELECT_APP select"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    if-nez v16, :cond_d

    .line 1832
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1834
    :cond_d
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v26

    check-cast v26, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v22

    .line 1837
    .local v22, "selectedList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v26

    if-gtz v26, :cond_e

    .line 1838
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1840
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Dialog;->dismiss()V

    .line 1842
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 1844
    :cond_f
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1845
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    const v26, 0x7f09015c

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1846
    const v26, 0x104000a

    new-instance v27, Lcom/android/settings/applications/ManageApplications$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v5}, Lcom/android/settings/applications/ManageApplications$4;-><init>(Lcom/android/settings/applications/ManageApplications;Landroid/widget/ListView;Landroid/content/Context;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1881
    const v26, 0x7f0904fd

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1882
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1883
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v22    # "selectedList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    const/16 v26, 0xe

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_26

    .line 1884
    const-string v26, "ManageApplications"

    const-string v27, "SELECT_ALL_DOWNLOAD_APP select"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v15, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    .line 1886
    .local v15, "listType":I
    if-nez v16, :cond_11

    .line 1887
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1889
    :cond_11
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v15, v0, :cond_12

    sget-boolean v26, Lcom/android/settings/applications/ManageApplications;->selectall_flag:Z

    if-nez v26, :cond_12

    .line 1890
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1892
    :cond_12
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v26

    check-cast v26, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v21

    .line 1895
    .local v21, "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v21, :cond_13

    .line 1896
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1898
    :cond_13
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 1899
    .local v6, "count":I
    if-gtz v6, :cond_14

    .line 1900
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1903
    :cond_14
    const/4 v10, 0x1

    .line 1904
    .local v10, "flag":Z
    if-nez v15, :cond_17

    .line 1905
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/applications/ManageApplications;->all_select_flag:Z

    .line 1915
    :cond_15
    :goto_4
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    if-ge v12, v6, :cond_1c

    .line 1916
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1917
    .restart local v9    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v9, :cond_16

    iget-object v0, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_16

    .line 1919
    if-eqz v10, :cond_1b

    .line 1920
    iget-object v0, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_16

    .line 1921
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v15, v0, :cond_1a

    .line 1922
    iget-object v0, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v26

    check-cast v26, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->canDisable(Lcom/android/settings/applications/ApplicationsState$AppEntry;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 1923
    iget-object v0, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1915
    :cond_16
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1906
    .end local v9    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v12    # "i":I
    :cond_17
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v15, v0, :cond_18

    .line 1907
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/applications/ManageApplications;->sd_select_flag:Z

    goto :goto_4

    .line 1908
    :cond_18
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v15, v0, :cond_19

    .line 1909
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/applications/ManageApplications;->enable_flag:Z

    goto :goto_4

    .line 1910
    :cond_19
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v15, v0, :cond_15

    .line 1911
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/applications/ManageApplications;->disable_flag:Z

    goto/16 :goto_4

    .line 1926
    .restart local v9    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .restart local v12    # "i":I
    :cond_1a
    iget-object v0, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1930
    :cond_1b
    iget-object v0, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1942
    .end local v9    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_1c
    if-nez v15, :cond_1f

    .line 1943
    if-nez v10, :cond_1e

    const/16 v26, 0x1

    :goto_7
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->all_select_flag:Z

    .line 1955
    :cond_1d
    :goto_8
    invoke-virtual/range {v16 .. v16}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 1956
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1957
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 1958
    .local v11, "host":Landroid/app/Activity;
    if-eqz v11, :cond_2

    .line 1959
    invoke-virtual {v11}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_2

    .line 1943
    .end local v11    # "host":Landroid/app/Activity;
    :cond_1e
    const/16 v26, 0x0

    goto :goto_7

    .line 1944
    :cond_1f
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v15, v0, :cond_21

    .line 1945
    if-nez v10, :cond_20

    const/16 v26, 0x1

    :goto_9
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->sd_select_flag:Z

    goto :goto_8

    :cond_20
    const/16 v26, 0x0

    goto :goto_9

    .line 1946
    :cond_21
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v15, v0, :cond_24

    .line 1947
    if-eqz v10, :cond_22

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v26

    if-gtz v26, :cond_22

    .line 1948
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1950
    :cond_22
    if-nez v10, :cond_23

    const/16 v26, 0x1

    :goto_a
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->enable_flag:Z

    goto :goto_8

    :cond_23
    const/16 v26, 0x0

    goto :goto_a

    .line 1951
    :cond_24
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v15, v0, :cond_1d

    .line 1952
    if-nez v10, :cond_25

    const/16 v26, 0x1

    :goto_b
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->disable_flag:Z

    goto :goto_8

    :cond_25
    const/16 v26, 0x0

    goto :goto_b

    .line 1962
    .end local v6    # "count":I
    .end local v10    # "flag":Z
    .end local v12    # "i":I
    .end local v15    # "listType":I
    .end local v21    # "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_26
    const/16 v26, 0xa

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_2b

    .line 1963
    const-string v26, "ManageApplications"

    const-string v27, "STOP_SELECT_APP select"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v26

    if-nez v26, :cond_28

    .line 1970
    :cond_27
    const-string v26, "ManageApplications"

    const-string v27, "invalid parameter mCurTab"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1973
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v22

    .line 1975
    .restart local v22    # "selectedList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_29

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v26

    if-gtz v26, :cond_29

    .line 1976
    const-string v26, "ManageApplications"

    const-string v27, "size le 0"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1979
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2a

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Dialog;->dismiss()V

    .line 1981
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 1983
    :cond_2a
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1984
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const v26, 0x7f09015f

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1985
    const v26, 0x7f090160

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1986
    const v26, 0x104000a

    new-instance v27, Lcom/android/settings/applications/ManageApplications$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/settings/applications/ManageApplications$5;-><init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/Context;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2019
    const v26, 0x7f0904fd

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2021
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 2024
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v22    # "selectedList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    const/16 v26, 0xd

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_2d

    .line 2025
    const-string v26, "ManageApplications"

    const-string v27, "STOP_ALL_APP select"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2c

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Dialog;->dismiss()V

    .line 2028
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 2030
    :cond_2c
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2031
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const v26, 0x7f09015e

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2032
    const v26, 0x7f090160

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2033
    const v26, 0x104000a

    new-instance v27, Lcom/android/settings/applications/ManageApplications$6;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/settings/applications/ManageApplications$6;-><init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/Context;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2067
    const v26, 0x7f0904fd

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2069
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 2071
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2d
    const/16 v26, 0xb

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_31

    .line 2072
    const-string v26, "ManageApplications"

    const-string v27, "DISABLE_SELECT_APP select"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    if-nez v16, :cond_2e

    .line 2074
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 2076
    :cond_2e
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v26

    check-cast v26, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v22

    .line 2079
    .restart local v22    # "selectedList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_2f

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v26

    if-gtz v26, :cond_2f

    .line 2080
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 2082
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    if-eqz v26, :cond_30

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Dialog;->dismiss()V

    .line 2084
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 2086
    :cond_30
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2087
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const v26, 0x7f090878

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2088
    const v26, 0x7f090879

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2089
    const v26, 0x7f090854

    new-instance v27, Lcom/android/settings/applications/ManageApplications$7;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v5, v2}, Lcom/android/settings/applications/ManageApplications$7;-><init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/Context;Landroid/widget/ListView;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2124
    const v26, 0x7f090855

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2125
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 2127
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v22    # "selectedList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_31
    const/16 v26, 0xc

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_34

    .line 2128
    const-string v26, "ManageApplications"

    const-string v27, "ENABLE_SELECT_APP select"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    if-nez v16, :cond_32

    .line 2130
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 2132
    :cond_32
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 2133
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v26

    check-cast v26, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v21

    .line 2134
    .restart local v21    # "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v6

    .line 2135
    .restart local v6    # "count":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_c
    if-ge v12, v6, :cond_33

    .line 2136
    const-string v27, "ManageApplications"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "cgm,enable package "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    new-instance v27, Lcom/android/settings/applications/ManageApplications$DisableChanger;

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/ManageApplications$DisableChanger;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v26, 0x0

    check-cast v26, Ljava/lang/Object;

    aput-object v26, v28, v29

    invoke-virtual/range {v27 .. v28}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2135
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 2144
    :cond_33
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 2146
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->disable_flag:Z

    .line 2147
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 2148
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 2149
    .restart local v11    # "host":Landroid/app/Activity;
    if-eqz v11, :cond_2

    .line 2150
    invoke-virtual {v11}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_2

    .line 2155
    .end local v6    # "count":I
    .end local v11    # "host":Landroid/app/Activity;
    .end local v12    # "i":I
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v21    # "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_34
    const/16 v26, 0xf

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_35

    const/16 v26, 0x10

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_3a

    .line 2157
    :cond_35
    const-string v26, "ManageApplications"

    const-string v27, "MOVE_TO_SDCARD select"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    if-nez v16, :cond_36

    .line 2159
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 2161
    :cond_36
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v26

    check-cast v26, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v22

    .line 2164
    .restart local v22    # "selectedList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_37

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v26

    if-gtz v26, :cond_37

    .line 2165
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 2167
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    if-eqz v26, :cond_38

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Dialog;->dismiss()V

    .line 2169
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 2171
    :cond_38
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2173
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const/16 v26, 0xf

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_39

    .line 2174
    const v26, 0x7f090163

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2179
    :goto_d
    const v26, 0x104000a

    new-instance v27, Lcom/android/settings/applications/ManageApplications$8;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/settings/applications/ManageApplications$8;-><init>(Lcom/android/settings/applications/ManageApplications;Landroid/widget/ListView;Landroid/content/Context;I)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2245
    const v26, 0x7f0904fd

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2246
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 2176
    :cond_39
    const v26, 0x7f090164

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_d

    .line 2250
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v22    # "selectedList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3a
    const/16 v26, 0x17

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_3b

    .line 2251
    new-instance v12, Landroid/content/Intent;

    const-string v26, "android.settings.APP_OPS_SETTINGS"

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2252
    .local v12, "i":Landroid/content/Intent;
    invoke-virtual {v5, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2257
    .end local v12    # "i":Landroid/content/Intent;
    :cond_3b
    const/16 v26, 0x0

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1295
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1296
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 1297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1298
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 1297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1300
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1406
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1273
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 1275
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 1276
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->updateNumTabs()V

    .line 1277
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1278
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1282
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1283
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1284
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1285
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1287
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1288
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1289
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1291
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1268
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1269
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1304
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1305
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1309
    :cond_0
    return-void
.end method

.method public runCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1739
    const/4 v4, 0x0

    .line 1740
    .local v4, "process":Ljava/lang/Process;
    const/4 v6, 0x0

    .line 1742
    .local v6, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 1743
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1744
    .local v3, "output":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1746
    .local v5, "stdout":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1747
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1751
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "output":Ljava/lang/StringBuffer;
    .end local v5    # "stdout":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    .line 1752
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "ManageApplications"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1755
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1760
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 1749
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "output":Ljava/lang/StringBuffer;
    .restart local v5    # "stdout":Ljava/io/DataInputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 1750
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 1755
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1756
    :catch_1
    move-exception v1

    .line 1757
    .local v1, "e2":Ljava/lang/Exception;
    const-string v7, "ManageApplications"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1756
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "output":Ljava/lang/StringBuffer;
    .end local v5    # "stdout":Ljava/io/DataInputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1757
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v7, "ManageApplications"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1754
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1755
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1758
    :goto_2
    throw v7

    .line 1756
    :catch_3
    move-exception v1

    .line 1757
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v8, "ManageApplications"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method tabForType(I)Lcom/android/settings/applications/ManageApplications$TabInfo;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1341
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1342
    .local v1, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1346
    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 1340
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1346
    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method updateActionBarEnabled()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    .line 1580
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-nez v5, :cond_1

    .line 1645
    :cond_0
    :goto_0
    return-void

    .line 1583
    :cond_1
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v2, v5, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    .line 1584
    .local v2, "listType":I
    const/4 v4, 0x0

    .line 1585
    .local v4, "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1588
    .local v0, "enabled":Z
    const-string v5, "SELECTED_TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectedList mCurTab"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v7, v7, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const/4 v5, 0x1

    if-ne v5, v2, :cond_5

    .line 1591
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static {v5}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static {v5}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    if-eqz v5, :cond_2

    .line 1592
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static {v5}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v5}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v4

    .line 1599
    :cond_2
    :goto_1
    const-string v5, "SELECTED_TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectedList "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    if-eqz v4, :cond_0

    .line 1607
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1608
    const/4 v0, 0x1

    .line 1610
    :cond_3
    const-string v5, "SELECTED_TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectedList enabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 1613
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v6, 0xf

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1614
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_4

    .line 1615
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1616
    :cond_4
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v5, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1617
    if-eqz v1, :cond_0

    .line 1618
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1594
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v5}, Lcom/android/settings/applications/ManageApplications$TabInfo;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1595
    .local v3, "lv":Landroid/widget/ListView;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1596
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 1621
    .end local v3    # "lv":Landroid/widget/ListView;
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1622
    .restart local v1    # "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 1623
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1626
    .end local v1    # "item":Landroid/view/MenuItem;
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v6, 0x10

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1627
    .restart local v1    # "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_6

    .line 1628
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1629
    :cond_6
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v5, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1630
    if-eqz v1, :cond_0

    .line 1631
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1634
    .end local v1    # "item":Landroid/view/MenuItem;
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v6, 0xb

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1635
    .restart local v1    # "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 1636
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1639
    .end local v1    # "item":Landroid/view/MenuItem;
    :pswitch_4
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v6, 0xc

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1640
    .restart local v1    # "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 1641
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 2330
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 2331
    .local v3, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 2334
    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 2335
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 2336
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 2340
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 2341
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 2342
    .local v2, "t":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 2343
    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 2340
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2338
    .end local v1    # "i":I
    .end local v2    # "t":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 2347
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 2348
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 2349
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2350
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 2351
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2353
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/16 v12, 0xa

    const/16 v11, 0xe

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1434
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v6, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v6, v6, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v6, v7, :cond_7

    .line 1443
    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ManageApplications;->tabForType(I)Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-result-object v4

    .line 1444
    .local v4, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    if-eqz v4, :cond_5

    # getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v6

    if-eqz v6, :cond_5

    # getter for: Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;
    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v6

    iget-object v6, v6, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v6}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v3

    .line 1446
    .local v3, "showingBackground":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v8, 0x4

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1447
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v6, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1448
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x11

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1449
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v8, 0x6

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1450
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v8, 0x7

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-nez v3, :cond_6

    move v6, v7

    :goto_2
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1451
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x8

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1473
    .end local v3    # "showingBackground":Z
    .end local v4    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_2
    :goto_3
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v6, :cond_0

    .line 1476
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v1, v6, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    .line 1477
    .local v1, "listType":I
    if-ne v1, v7, :cond_c

    .line 1478
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v6, v12}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1479
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v8, 0x6

    const v9, 0x7f090898

    invoke-interface {v6, v5, v12, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1483
    :cond_3
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v7, 0xd

    invoke-direct {p0, v6, v7}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1484
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v7, 0xd

    const/16 v8, 0x9

    const v9, 0x7f09015e

    invoke-interface {v6, v5, v7, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1576
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateActionBarEnabled()V

    goto/16 :goto_0

    .end local v1    # "listType":I
    .restart local v4    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_5
    move v3, v5

    .line 1444
    goto :goto_1

    .restart local v3    # "showingBackground":Z
    :cond_6
    move v6, v5

    .line 1450
    goto :goto_2

    .line 1453
    .end local v3    # "showingBackground":Z
    .end local v4    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_7
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v6, v6, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v6, v6, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_9

    .line 1454
    :cond_8
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x11

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1456
    :cond_9
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v8, 0x4

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iget v6, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const/4 v9, 0x4

    if-eq v6, v9, :cond_a

    move v6, v7

    :goto_5
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1457
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v6, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iget v6, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v6, v13, :cond_b

    move v6, v7

    :goto_6
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1458
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v8, 0x6

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1459
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v8, 0x7

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1460
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x8

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1463
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x13

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1464
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1466
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x16

    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_a
    move v6, v5

    .line 1456
    goto :goto_5

    :cond_b
    move v6, v5

    .line 1457
    goto :goto_6

    .line 1488
    .restart local v1    # "listType":I
    :cond_c
    if-nez v1, :cond_10

    .line 1489
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1491
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0xf

    invoke-direct {p0, v6, v8}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 1492
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0xf

    const v9, 0x7f090161

    invoke-interface {v6, v5, v8, v7, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1497
    :cond_d
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x9

    invoke-direct {p0, v6, v8}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1498
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x9

    const v9, 0x7f09082d

    invoke-interface {v6, v5, v8, v13, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1502
    :cond_e
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v6, v11}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1504
    iget-boolean v6, p0, Lcom/android/settings/applications/ManageApplications;->all_select_flag:Z

    if-eqz v6, :cond_f

    .line 1505
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v8, 0x7f090aaa

    invoke-interface {v6, v5, v11, v12, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_4

    .line 1509
    :cond_f
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v8, 0x7f0904fd

    invoke-interface {v6, v5, v11, v12, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_4

    .line 1514
    :cond_10
    const/4 v6, 0x2

    if-ne v1, v6, :cond_14

    .line 1515
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x10

    invoke-direct {p0, v6, v8}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_11

    .line 1516
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f09084f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1517
    .local v0, "internalStorage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f090250

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1518
    .local v2, "move_to_phone":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x10

    const/4 v9, 0x2

    invoke-interface {v6, v5, v8, v9, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1522
    .end local v0    # "internalStorage":Ljava/lang/String;
    .end local v2    # "move_to_phone":Ljava/lang/String;
    :cond_11
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x9

    invoke-direct {p0, v6, v8}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1523
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x9

    const v9, 0x7f09082d

    invoke-interface {v6, v5, v8, v13, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1527
    :cond_12
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v6, v11}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1528
    const-string v6, "ManageApplications"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sd_card: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/applications/ManageApplications;->sd_select_flag:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-boolean v6, p0, Lcom/android/settings/applications/ManageApplications;->sd_select_flag:Z

    if-eqz v6, :cond_13

    .line 1530
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v8, 0x7f090aaa

    invoke-interface {v6, v5, v11, v12, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_4

    .line 1534
    :cond_13
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v8, 0x7f0904fd

    invoke-interface {v6, v5, v11, v12, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_4

    .line 1539
    :cond_14
    const/4 v6, 0x3

    if-ne v1, v6, :cond_17

    .line 1540
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0xb

    invoke-direct {p0, v6, v8}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_15

    .line 1541
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0xb

    const/4 v9, 0x7

    const v10, 0x7f090830

    invoke-interface {v6, v5, v8, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1545
    :cond_15
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v6, v11}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1546
    const-string v6, "ManageApplications"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/applications/ManageApplications;->enable_flag:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-boolean v6, p0, Lcom/android/settings/applications/ManageApplications;->enable_flag:Z

    if-eqz v6, :cond_16

    .line 1548
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v8, 0x7f090aaa

    invoke-interface {v6, v5, v11, v12, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_4

    .line 1552
    :cond_16
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v8, 0x7f0904fd

    invoke-interface {v6, v5, v11, v12, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_4

    .line 1557
    :cond_17
    const/4 v6, 0x4

    if-ne v1, v6, :cond_4

    .line 1558
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0xc

    invoke-direct {p0, v6, v8}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_18

    .line 1559
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0xc

    const/16 v9, 0x8

    const v10, 0x7f090831

    invoke-interface {v6, v5, v8, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1562
    :cond_18
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v6, v11}, Lcom/android/settings/applications/ManageApplications;->isMenuExist(Landroid/view/Menu;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1563
    const-string v6, "ManageApplications"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/applications/ManageApplications;->disable_flag:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-boolean v6, p0, Lcom/android/settings/applications/ManageApplications;->disable_flag:Z

    if-eqz v6, :cond_19

    .line 1565
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v8, 0x7f090aaa

    invoke-interface {v6, v5, v11, v12, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_4

    .line 1569
    :cond_19
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v8, 0x7f0904fd

    invoke-interface {v6, v5, v11, v12, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_4
.end method
