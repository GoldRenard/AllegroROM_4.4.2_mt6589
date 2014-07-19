.class public Lcom/lenovo/launchericontheme/LaunchIconThemeService;
.super Lcom/lenovo/launchericontheme/ILaunchIconThemeService$Stub;
.source "LaunchIconThemeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;,
        Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;
    }
.end annotation


# static fields
.field private static final ALL_THEME_ICON_COUNT:I = 0x64

.field static final DBG:Z = true

.field static final DEBUG_LOADERS:Z = true

.field public static final DEFAULT_SYSTEM_THEME_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.launcher.theme.classic"

.field private static final DRAWABLESTR_END:Ljava/lang/String; = ".png"

.field private static final DRAWABLESTR_START:Ljava/lang/String; = "/drawable/"

.field private static final RESOURCE_TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final SERVICE_NAME:Ljava/lang/String; = "LaunchIconThemeService"

.field static final TAG:Ljava/lang/String; = "LaunchIconThemeService"

.field private static final THEME_CHANGE_DO_ACTION:Ljava/lang/String; = "android.intent.action.UPDATE_LOCAL_THEME"

.field public static final THEME_FIELD_NAME:Ljava/lang/String; = "lenovo_desktop_theme"


# instance fields
.field private mComponent2Iconid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDesktopThemeObserver:Landroid/database/ContentObserver;

.field private mIconIDSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mSystemReady:Z

.field private final mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

.field private mThemePackageName:Ljava/lang/String;

.field private mThemePackageNameExtend:Ljava/lang/String;

.field private mThemeResource:Landroid/content/res/Resources;

.field private mThemeResourceExtend:Landroid/content/res/Resources;

.field private sWorker:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x64

    .line 186
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/ILaunchIconThemeService$Stub;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mSystemReady:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mIconIDSet:Ljava/util/HashSet;

    .line 68
    new-instance v0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    .line 510
    const-string v0, "com.lenovo.launcher.launcherextend"

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageNameExtend:Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .param p1, "x1"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->enqueuePackageUpdated(Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->setSystemTheme(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->updatePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->forceKillAppLists()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .param p1, "x1"    # Landroid/content/res/Resources;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private add(Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->findActivity(Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->addIconResNameForPackage(Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method

.method private addAndroidDefIconItem()V
    .locals 2

    .prologue
    .line 407
    const v0, 0x1080093

    .line 408
    .local v0, "iconId":I
    const-string v1, "android"

    .line 409
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->createAndAddNewIconItemToHashMap(ILjava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method private addIconResNameForPackage(Landroid/content/pm/ActivityInfo;)V
    .locals 4
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v1

    .line 425
    .local v1, "iconId":I
    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 426
    .local v2, "pkg":Ljava/lang/String;
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 427
    .local v0, "activityName":Ljava/lang/String;
    invoke-direct {p0, v1, v0, v2}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->createAndAddNewIconItemToHashMap(ILjava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method private addIconResNameForPackage(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 416
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 417
    .local v0, "iconId":I
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 418
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->createAndAddNewIconItemToHashMap(ILjava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private addPackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 333
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 334
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "LaunchIconThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackage: packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", matches = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 336
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 337
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->add(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 340
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    return-void
.end method

.method private createAndAddNewIconItemToHashMap(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "iconId"    # I
    .param p2, "activityname"    # Ljava/lang/String;
    .param p3, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v11, -0x1

    .line 431
    if-nez p1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    const/4 v7, 0x0

    .line 436
    .local v7, "res":Landroid/content/res/Resources;
    :try_start_0
    iget-object v9, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 443
    const/4 v2, 0x0

    .line 445
    .local v2, "iconResourcesName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 450
    :goto_1
    if-eqz v2, :cond_0

    .line 454
    new-instance v1, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;

    invoke-direct {v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;-><init>()V

    .line 455
    .local v1, "iconItem":Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    invoke-virtual {v1, p2}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->setmClass(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->setIconId(I)V

    .line 458
    const/16 v9, 0x3a

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 459
    .local v3, "indexColon":I
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 460
    .local v4, "indexSeperator":I
    if-eq v3, v11, :cond_3

    if-eq v4, v11, :cond_3

    .line 461
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v6, 0x1

    .line 464
    .local v6, "pkgNotEquals":Z
    :cond_2
    const-string v9, "."

    const-string v10, "_"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 465
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "__"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 468
    .local v8, "resName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->setresName1(Ljava/lang/String;)V

    .line 469
    if-eqz v6, :cond_3

    .line 470
    move-object v5, p3

    .line 471
    const-string v9, "."

    const-string v10, "_"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "__"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 473
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->setresName2(Ljava/lang/String;)V

    .line 476
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pkgNotEquals":Z
    .end local v8    # "resName":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->putIconIdToHashMap(I)V

    .line 477
    invoke-direct {p0, v1, p3}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->putIconItemToHashMap(Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    .end local v1    # "iconItem":Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    .end local v2    # "iconResourcesName":Ljava/lang/String;
    .end local v3    # "indexColon":I
    .end local v4    # "indexSeperator":I
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "LaunchIconThemeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getResourcesForApplication failed, packagename="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 446
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "iconResourcesName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 447
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v9, "LaunchIconThemeService"

    const-string v10, "getResourceName failed!"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6
    .param p1, "themePackageName"    # Ljava/lang/String;

    .prologue
    .line 283
    const/4 v2, 0x0

    .line 284
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 285
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 287
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 293
    :cond_0
    :goto_0
    return-object v2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LaunchIconThemeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResourcesForApplication failed, packagename="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enqueuePackageUpdated(Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;)V
    .locals 1
    .param p1, "task"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method private static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 377
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 378
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static findActivity(Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;)Z
    .locals 9
    .param p1, "component"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;",
            ">;>;",
            "Landroid/content/pm/ResolveInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "apps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;>;"
    const/4 v7, 0x0

    .line 387
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 388
    .local v1, "entrysets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;>;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v7

    .line 402
    :goto_0
    return v6

    .line 391
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 392
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 393
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 394
    .local v4, "iconItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 395
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;

    .line 396
    .local v5, "item":Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    invoke-virtual {v5}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->getmClass()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 397
    const/4 v6, 0x1

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "iconItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    .end local v5    # "item":Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    :cond_4
    move v6, v7

    .line 402
    goto :goto_0
.end method

.method private forceKillAppLists()V
    .locals 4

    .prologue
    .line 611
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 612
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v1

    .line 614
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getIconItemListsFromHashMap(Ljava/lang/String;I)Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconID"    # I

    .prologue
    const/4 v3, 0x0

    .line 558
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 559
    .local v2, "iconItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v1, v3

    .line 567
    :goto_0
    return-object v1

    .line 562
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;

    .line 563
    .local v1, "iconItem":Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    invoke-virtual {v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->getIconId()I

    move-result v4

    if-ne v4, p2, :cond_2

    goto :goto_0

    .end local v1    # "iconItem":Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    :cond_3
    move-object v1, v3

    .line 567
    goto :goto_0
.end method

.method private getNewIconIdFromThemeResource(Landroid/content/res/Resources;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "themeRes"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconID"    # I
    .param p4, "themePkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 528
    if-eqz p1, :cond_0

    invoke-direct {p0, p3}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->isHashMapHasIconId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v1

    .line 531
    :cond_1
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 532
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->getIconItemListsFromHashMap(Ljava/lang/String;I)Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;

    move-result-object v0

    .line 533
    .local v0, "iconItem":Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    if-eqz v0, :cond_5

    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, "resID":I
    invoke-virtual {v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->getresName1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 536
    invoke-virtual {v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->getresName1()Ljava/lang/String;

    move-result-object v2

    const-string v4, "drawable"

    invoke-virtual {p1, v2, v4, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 539
    :cond_2
    if-eqz v1, :cond_3

    .line 540
    monitor-exit v3

    goto :goto_0

    .line 549
    .end local v0    # "iconItem":Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    .end local v1    # "resID":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 543
    .restart local v0    # "iconItem":Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    .restart local v1    # "resID":I
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->getresName2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 544
    invoke-virtual {v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->getresName2()Ljava/lang/String;

    move-result-object v2

    const-string v4, "drawable"

    invoke-virtual {p1, v2, v4, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 547
    :cond_4
    monitor-exit v3

    goto :goto_0

    .line 549
    .end local v1    # "resID":I
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private initIntentFilter()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "android.intent.action.UPDATE_LOCAL_THEME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    return-void
.end method

.method private initRegisterContentObserver()V
    .locals 4

    .prologue
    .line 210
    new-instance v0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$2;

    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->sWorker:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$2;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mDesktopThemeObserver:Landroid/database/ContentObserver;

    .line 220
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lenovo_desktop_theme"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mDesktopThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 223
    return-void
.end method

.method private isHashMapHasIconId(I)Z
    .locals 2
    .param p1, "iconId"    # I

    .prologue
    .line 554
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mIconIDSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadLaunchIconId(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v10, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 302
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v7, v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 303
    .local v7, "mainIntent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 305
    .local v8, "manager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 306
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 307
    .local v1, "activityCount":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 308
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 309
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v9}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->addIconResNameForPackage(Landroid/content/pm/ActivityInfo;)V

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 306
    .end local v1    # "activityCount":I
    .end local v4    # "i":I
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 313
    .restart local v1    # "activityCount":I
    .restart local v4    # "i":I
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 314
    .local v3, "allapplists":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v3, :cond_2

    .line 315
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 316
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v2}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->addIconResNameForPackage(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_2

    .line 324
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "activityCount":I
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "allapplists":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "mainIntent":Landroid/content/Intent;
    .end local v8    # "manager":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 321
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1    # "activityCount":I
    .restart local v3    # "allapplists":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4    # "i":I
    .restart local v7    # "mainIntent":Landroid/content/Intent;
    .restart local v8    # "manager":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->addAndroidDefIconItem()V

    .line 324
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    return-void
.end method

.method private putIconIdToHashMap(I)V
    .locals 2
    .param p1, "iconId"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mIconIDSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method private putIconItemToHashMap(Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;Ljava/lang/String;)V
    .locals 2
    .param p1, "iconItem"    # Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    .param p2, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 489
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    :cond_0
    if-nez v0, :cond_1

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 491
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;>;"
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    return-void
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string v0, "LaunchIconThemeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePackage: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mComponent2Iconid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_0
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSystemTheme(Ljava/lang/String;)V
    .locals 1
    .param p1, "themePackageName"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->setSystemTheme(Ljava/lang/String;Z)V

    .line 244
    return-void
.end method

.method private setSystemTheme(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "themePackageName"    # Ljava/lang/String;
    .param p2, "isFirstboot"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p1, :cond_4

    const-string v0, ">DEFAULT THEME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    :cond_2
    const-string v0, "com.lenovo.launcher"

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    .line 263
    :goto_1
    const-string v0, "LaunchIconThemeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemTheme mThemePackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 265
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    goto :goto_0

    .line 259
    :cond_4
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    goto :goto_1

    .line 268
    :cond_5
    const-string v0, "persist.sys.ideadesk_theme_name"

    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    .line 272
    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v0, :cond_6

    .line 273
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->forceKillAppLists()V

    .line 276
    :cond_6
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 277
    const-string v0, "LaunchIconThemeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to createThemeResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->removePackage(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->addPackage(Ljava/lang/String;)V

    .line 362
    monitor-exit v1

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDrawableIconIDFromThemePackage(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconID"    # I

    .prologue
    const/4 v0, 0x0

    .line 497
    iget-boolean v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->getNewIconIdFromThemeResource(Landroid/content/res/Resources;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableIconIDFromThemePackageExtend(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconID"    # I

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 522
    :goto_0
    return v0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResourceExtend:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageNameExtend:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResourceExtend:Landroid/content/res/Resources;

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResourceExtend:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageNameExtend:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->getNewIconIdFromThemeResource(Landroid/content/res/Resources;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableIconStrFromThemePackage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconID"    # I

    .prologue
    const/4 v1, 0x0

    .line 574
    iget-boolean v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mSystemReady:Z

    if-nez v2, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-object v1

    .line 578
    :cond_1
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 582
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 584
    :try_start_0
    invoke-direct {p0, p2}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->isHashMapHasIconId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 585
    monitor-exit v3

    goto :goto_0

    .line 605
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 588
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->getIconItemListsFromHashMap(Ljava/lang/String;I)Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;

    move-result-object v0

    .line 589
    .local v0, "iconItem":Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
    if-eqz v0, :cond_6

    .line 590
    const/4 v1, 0x0

    .line 591
    .local v1, "resStr":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->getresName1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 592
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/drawable/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->getresName1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getThemeBestFitFile(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    :cond_3
    if-eqz v1, :cond_4

    .line 596
    monitor-exit v3

    goto :goto_0

    .line 599
    :cond_4
    invoke-virtual {v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->getresName2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 600
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/drawable/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->getresName2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getThemeBestFitFile(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 603
    :cond_5
    monitor-exit v3

    goto :goto_0

    .line 605
    .end local v1    # "resStr":Ljava/lang/String;
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 192
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->loadLaunchIconId(Landroid/content/Context;)V

    .line 193
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->sWorker:Landroid/os/Handler;

    .line 194
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->initRegisterContentObserver()V

    .line 195
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lenovo_desktop_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "themePackageName":Ljava/lang/String;
    invoke-direct {p0, v0, v6}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->setSystemTheme(Ljava/lang/String;Z)V

    .line 198
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->initIntentFilter()V

    .line 201
    new-instance v1, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;

    const/4 v2, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android"

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;I[Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->enqueuePackageUpdated(Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;)V

    .line 206
    iput-boolean v6, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mSystemReady:Z

    .line 207
    return-void
.end method
