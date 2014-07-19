.class public Lcom/mediatek/settings/deviceinfo/MemoryExts;
.super Ljava/lang/Object;
.source "MemoryExts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    }
.end annotation


# static fields
.field private static final ACTION_DYNAMIC_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final APP_INSTALL_AUTO_ID:I = 0x0

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_SD0_ASK:I = 0x4

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_SD1_ASK:I = 0x5

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_UNKNOWN:I = 0x6

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/sdcard1"

.field private static final MEMORY_SD0_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MEMORY_SD0_EMMC_MNT_FLAG_ICS:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MEMORY_SD1_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard1"

.field private static final MEMORY_SD1_EMMC_MNT_FLAG_ICS:Ljava/lang/String; = "/storage/sdcard1"

.field private static final ORDER_PHONE_STORAGE:I = -0x3

.field private static final ORDER_SD_CARD:I = -0x2

.field private static final ORDER_USB_OTG:I = -0x1

.field private static final SD_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MemorySettings"

.field private static final USB_CABLE_CONNECTED_STATE:Ljava/lang/String; = "CONNECTED"

.field private static sClickedMountPoint:Ljava/lang/String;


# instance fields
.field private defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mActivity:Landroid/app/Activity;

.field private mApkInstallerEntrance:Landroid/preference/Preference;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

.field private mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

.field private mDefaultWritePath:Ljava/lang/String;

.field mDynSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mInstallLocationContainer:Landroid/preference/ListPreference;

.field private mInstallLocationEnabled:Z

.field private mIsAppInstallerInstalled:Z

.field private mIsCategoryAdded:Z

.field private mIsRemovableVolume:Z

.field private mIsUnmountingUsb:Z

.field private mResources:Landroid/content/res/Resources;

.field private mRootContainer:Landroid/preference/PreferenceScreen;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

.field private mWritePathAdded:[Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Landroid/os/storage/StorageManager;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "storageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    .line 68
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    .line 129
    new-instance v0, Lcom/mediatek/settings/deviceinfo/MemoryExts$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts$1;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 300
    new-instance v0, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 566
    new-instance v0, Lcom/mediatek/settings/deviceinfo/MemoryExts$7;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts$7;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    .line 104
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    iput-object p2, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    .line 106
    iput-object p3, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 107
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    .line 108
    const-string v0, "MemorySettings"

    const-string v1, "SD SWAP : false , SD SHARED : true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/deviceinfo/MemoryExts;)[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateInstallLocation()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/deviceinfo/MemoryExts;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->showDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/deviceinfo/MemoryExts;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->setEmmcDefaultStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # Landroid/os/storage/IMountService;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/deviceinfo/MemoryExts;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private doMount(Landroid/os/storage/IMountService;)V
    .locals 3
    .param p1, "mountService"    # Landroid/os/storage/IMountService;

    .prologue
    .line 518
    new-instance v0, Lcom/mediatek/settings/deviceinfo/MemoryExts$6;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts$6;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 534
    return-void
.end method

.method private filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 6
    .param p1, "volumes"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v1, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 462
    const-string v2, "MemorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Volume : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , emulated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v2, "not_present"

    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 467
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/storage/StorageVolume;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/storage/StorageVolume;

    return-object v2
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, "selectedLocation":I
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedLocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getEmmcDefaultStorage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 636
    const-string v1, "persist.sys.emmc"

    const-string v2, "/storage/sdcard0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "path":Ljava/lang/String;
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmmcDefaultStorage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-object v0
.end method

.method private initApkInstaller()V
    .locals 3

    .prologue
    .line 178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    .line 179
    iget-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    .line 181
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    const v2, 0x7f09024b

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 182
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    const v2, 0x7f09024c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 183
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.apkinstaller"

    const-string v2, "com.mediatek.apkinstaller.APKInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 191
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initDefaultWriteDisk()V
    .locals 19

    .prologue
    .line 216
    new-instance v15, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    const v16, 0x7f090274

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setTitle(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 221
    .local v1, "availableVolumes":[Landroid/os/storage/StorageVolume;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumeListAsUser()[Landroid/os/storage/StorageVolume;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 224
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v14, "writePathList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "mPathList":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v13

    .line 232
    .local v13, "volumes":[Landroid/os/storage/StorageVolume;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v7, "mVolumePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v10, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v15, v6

    if-ge v3, v15, :cond_2

    .line 236
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Volume: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v13, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ,state is: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v17, v0

    aget-object v18, v6, v3

    invoke-virtual/range {v17 .. v18}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ,emulated is: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v13, v3

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", path is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v13, v3

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v15, "not_present"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v16, v0

    aget-object v17, v6, v3

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 241
    aget-object v15, v6, v3

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    aget-object v15, v13, v3

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 246
    .local v5, "length":I
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "default path group length = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_8

    .line 249
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 250
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    new-instance v9, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v15}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 251
    .local v9, "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v9, v15}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 253
    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v16, 0x7f090c0d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 255
    .local v11, "title":Ljava/lang/CharSequence;
    :goto_2
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 256
    .local v8, "path":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->getEmmcDefaultStorage()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "emmcPath":Ljava/lang/String;
    const-string v15, "/storage/sdcard0"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 258
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "path":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 259
    .restart local v8    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v15}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 279
    :cond_3
    :goto_3
    invoke-virtual {v9, v11}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v9, v8}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setPath(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v9, v15}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 253
    .end local v2    # "emmcPath":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v16, 0x7f090c0e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_2

    .line 261
    .restart local v2    # "emmcPath":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v11    # "title":Ljava/lang/CharSequence;
    :cond_5
    const-string v15, "/storage/sdcard0"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 262
    move-object v8, v2

    .line 263
    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 264
    .local v4, "idx":I
    const/4 v15, -0x1

    if-le v4, v15, :cond_3

    if-ge v4, v5, :cond_3

    .line 265
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 267
    .end local v4    # "idx":I
    :cond_6
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 268
    const-string v8, "/storage/sdcard0"

    .line 269
    const-string v15, "/storage/sdcard0"

    invoke-interface {v7, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 270
    .restart local v4    # "idx":I
    const/4 v15, -0x1

    if-le v4, v15, :cond_3

    if-ge v4, v5, :cond_3

    .line 271
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 274
    .end local v4    # "idx":I
    :cond_7
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "path":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 275
    .restart local v8    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v15}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 296
    .end local v2    # "emmcPath":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_8
    const/4 v15, 0x0

    new-array v15, v15, [Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-interface {v14, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 297
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    .line 298
    return-void
.end method

.method private initInstallLocation()V
    .locals 4

    .prologue
    const v3, 0x7f090876

    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "set_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    .line 115
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    .line 117
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 118
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f090877

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 119
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0a00ba

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 127
    :cond_1
    return-void
.end method

.method private isPkgInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 207
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 208
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/4 v2, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private setEmmcDefaultStorage(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 600
    const/4 v4, 0x0

    .line 601
    .local v4, "propPath":Ljava/lang/String;
    const-string v6, "/storage/sdcard0"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 602
    const-string v4, "/storage/sdcard0"

    .line 603
    const-string v6, "emmc"

    invoke-direct {p0, v6}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    .line 611
    :goto_0
    const-string v6, "persist.sys.emmc"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEmmcDefaultStorage propPath = :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , path :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v6, :cond_0

    .line 615
    const-string v6, "/storage/sdcard0"

    invoke-static {v6}, Lcom/mediatek/storage/StorageManagerEx;->setDefaultPath(Ljava/lang/String;)V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 619
    .local v5, "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v5}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 620
    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 618
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    .end local v0    # "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_2
    const-string v6, "/storage/sdcard1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 605
    const-string v4, "/storage/sdcard1"

    .line 606
    const-string v6, "sdcard"

    invoke-direct {p0, v6}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_3
    const-string v4, "/storage/sdcard0"

    .line 609
    const-string v6, "emmc"

    invoke-direct {p0, v6}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 624
    .restart local v0    # "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_4
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_5

    .line 625
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_5

    .line 626
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    iput-object v6, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 627
    const-string v6, "/storage/sdcard0"

    iput-object v6, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    .line 631
    :cond_5
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 632
    .local v3, "pm":Landroid/os/PowerManager;
    if-eqz v3, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 633
    :cond_6
    return-void
.end method

.method private showDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const v6, 0x7f0904fd

    const/4 v0, 0x0

    const v5, 0x7f090854

    const v4, 0x1080027

    const v3, 0x1040014

    .line 330
    const-string v1, "flyrea"

    const-string v2, "wht createdDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    packed-switch p1, :pswitch_data_0

    .line 367
    :goto_0
    return-object v0

    .line 333
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/settings/deviceinfo/MemoryExts$3;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts$3;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c12

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 345
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/settings/deviceinfo/MemoryExts$4;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts$4;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c11

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 357
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/settings/deviceinfo/MemoryExts$5;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts$5;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c10

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAPKInstaller()V
    .locals 10

    .prologue
    .line 194
    iget-boolean v7, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    if-nez v7, :cond_0

    .line 203
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v1, 0x0

    .line 196
    .local v1, "flag":Z
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 197
    .local v4, "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v4}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "writePath":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "volumeState":Ljava/lang/String;
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-nez v1, :cond_1

    const-string v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 196
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 202
    .end local v4    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v5    # "volumeState":Ljava/lang/String;
    .end local v6    # "writePath":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateDefaultWriteDisk()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 372
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "externalStoragePath":Ljava/lang/String;
    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "externalStoragePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    array-length v9, v9

    if-ge v2, v9, :cond_2

    .line 376
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v9, v2

    .line 377
    .local v5, "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v5}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, "writePath":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, "volumeState":Ljava/lang/String;
    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Path "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " volume state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v9, "mounted"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 382
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aget-boolean v9, v9, v2

    if-nez v9, :cond_0

    .line 383
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 384
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aput-boolean v13, v9, v2

    .line 375
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    :cond_1
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aget-boolean v9, v9, v2

    if-eqz v9, :cond_0

    .line 396
    invoke-virtual {v5, v12}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 397
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 398
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aput-boolean v12, v9, v2

    goto :goto_1

    .line 404
    .end local v5    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v6    # "volumeState":Ljava/lang/String;
    .end local v8    # "writePath":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    .line 405
    .local v7, "writeDiskNum":I
    iget-boolean v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    if-eqz v9, :cond_3

    if-nez v7, :cond_3

    .line 406
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 407
    iput-boolean v12, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    .line 418
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->getEmmcDefaultStorage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    .line 419
    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get default path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v5, v0, v3

    .line 421
    .restart local v5    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v5}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/storage/sdcard0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 422
    invoke-virtual {v5, v13}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 423
    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 420
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 411
    .end local v0    # "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_3
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 412
    iput-boolean v12, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    goto :goto_2

    .line 425
    .restart local v0    # "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_4
    invoke-virtual {v5, v12}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    goto :goto_4

    .line 428
    .end local v5    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_5
    return-void
.end method

.method private updateInstallLocation()V
    .locals 13

    .prologue
    .line 149
    iget-boolean v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    if-nez v10, :cond_0

    .line 175
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 152
    .local v7, "volumePreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v7}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 153
    .local v9, "writePath":Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v10, v9}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, "volumeState":Ljava/lang/String;
    const-string v10, "shared"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 155
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    const-string v10, "MemorySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Volume state is MEDIA_SHARED, path "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    .end local v7    # "volumePreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v8    # "volumeState":Ljava/lang/String;
    .end local v9    # "writePath":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    .line 162
    .local v5, "primaryExternalStorage":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 163
    .local v6, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 165
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v10}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .end local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_3
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 170
    .local v2, "entries":[Ljava/lang/CharSequence;
    const/4 v10, 0x1

    aput-object v5, v2, v10

    .line 171
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v10, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 173
    const/4 v1, 0x1

    .line 174
    .local v1, "enable":Z
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 162
    .end local v1    # "enable":Z
    .end local v2    # "entries":[Ljava/lang/CharSequence;
    .restart local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private writeSwitchProperty(Ljava/lang/String;)V
    .locals 6
    .param p1, "mLable"    # Ljava/lang/String;

    .prologue
    .line 651
    const-string v3, "persist.sys.switch_storage"

    const-string v4, "none,0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, "propertyValue":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "split":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 654
    .local v0, "cid":Ljava/lang/String;
    const-string v3, "flyrea"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set the persist == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v3, "persist.sys.switch_storage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return-void
.end method


# virtual methods
.method public getResourceId(II)I
    .locals 1
    .param p1, "usbResId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_0

    .end local p1    # "usbResId":I
    :goto_0
    return p1

    .restart local p1    # "usbResId":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 456
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public initMtkCategory()V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->initApkInstaller()V

    .line 432
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->initInstallLocation()V

    .line 433
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->initDefaultWriteDisk()V

    .line 434
    return-void
.end method

.method public isAddInternalCategory()Z
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public isAddPhysicalCategory(Landroid/os/storage/StorageVolume;)Z
    .locals 1
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInUMSState()Z
    .locals 8

    .prologue
    .line 443
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 444
    .local v3, "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v3}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, "writePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "volumeState":Ljava/lang/String;
    const-string v6, "shared"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 447
    const-string v6, "MemorySettings"

    const-string v7, "Current is UMS state, remove the unmount dialog"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v6, 0x1

    .line 451
    .end local v3    # "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v4    # "volumeState":Ljava/lang/String;
    .end local v5    # "writePath":Ljava/lang/String;
    :goto_1
    return v6

    .line 443
    .restart local v3    # "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .restart local v4    # "volumeState":Ljava/lang/String;
    .restart local v5    # "writePath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v3    # "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v4    # "volumeState":Ljava/lang/String;
    .end local v5    # "writePath":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public mount(Landroid/os/storage/IMountService;)V
    .locals 0
    .param p1, "mountService"    # Landroid/os/storage/IMountService;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V

    .line 492
    return-void
.end method

.method public registerSdSwapReceiver(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;>;"
    return-void
.end method

.method public setUsbEntranceState(Landroid/hardware/usb/UsbManager;Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "usb"    # Landroid/view/MenuItem;

    .prologue
    .line 593
    const-string v1, "CONNECTED"

    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getCurrentState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 595
    .local v0, "isUsbCableInserted":Z
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUsbCableInserted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 597
    return-void
.end method

.method public setVolumeParameter(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 1
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 545
    sget-object v0, Landroid/os/Environment;->DIRECTORY_USBOTG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    .line 547
    sput-object p1, Lcom/mediatek/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    .line 548
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsRemovableVolume:Z

    .line 549
    return-void
.end method

.method public unRegisterSdSwapReceiver()V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public updateMtkCategory()V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateInstallLocation()V

    .line 438
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateAPKInstaller()V

    .line 439
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V

    .line 440
    return-void
.end method
