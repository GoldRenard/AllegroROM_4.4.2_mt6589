.class public Lcom/lenovo/launchericontheme/LaunchIconThemeResource;
.super Ljava/lang/Object;
.source "LaunchIconThemeResource.java"


# static fields
.field private static final DBG:Z = true

.field private static final GET_THEME_ICON_FROM_THEME_EXTEND_PACK:Z = true

.field private static final GET_THEME_ICON_FROM_THEME_PACK:Z = false

.field private static final RESOURCES_NEED_CHANGE_LOCALTHEMELISTS:[Ljava/lang/String;

.field public static final SUPPORT_LAUNCHICON_THEME:Z = true

.field private static final TAG:Ljava/lang/String; = "LaunchIconThemeResource"

.field private static final THEME_CHANGE_DO_ACTION:Ljava/lang/String; = "android.intent.action.UPDATE_LOCAL_THEME"

.field private static final USE_ZIP_FILE_NAME_SEARCH:Z = true

.field public static final sDEFAULT_THEME:Ljava/lang/String; = ">DEFAULT THEME"

.field public static final sDEFAULT_THEME_NAME:Ljava/lang/String; = "com.lenovo.launcher"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDesktopThemeObserver:Landroid/database/ContentObserver;

.field private mHandlerthread:Landroid/os/HandlerThread;

.field private mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

.field private mLock:Ljava/lang/Object;

.field private mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

.field private mThemePackageName:Ljava/lang/String;

.field private mThemePackageNameExtend:Ljava/lang/String;

.field private mThemeResource:Landroid/content/res/Resources;

.field private mThemeResourceExtend:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 330
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.lenovo.widetouch"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->RESOURCES_NEED_CHANGE_LOCALTHEMELISTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLock:Ljava/lang/Object;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    const-string v1, "com.lenovo.launcher.launcherextend"

    iput-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageNameExtend:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    .line 66
    const-string v1, "LaunchIconThemeService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/launchericontheme/ILaunchIconThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    .line 68
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->readyDesktopThemeObserver()V

    .line 69
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->registerThemeFieldNameContentObserver()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lenovo_desktop_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "themePackageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->setSystemTheme(Ljava/lang/String;)V

    .line 75
    .end local v0    # "themePackageName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->initIntentFilter()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResourceExtend:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/launchericontheme/LaunchIconThemeResource;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->setSystemTheme(Ljava/lang/String;)V

    return-void
.end method

.method private checkNeedToRegisterBroadcastReceiver()Z
    .locals 6

    .prologue
    .line 97
    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "mpkgname":Ljava/lang/String;
    sget-object v0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->RESOURCES_NEED_CHANGE_LOCALTHEMELISTS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 99
    .local v4, "pakname":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    const/4 v5, 0x1

    .line 103
    .end local v4    # "pakname":Ljava/lang/String;
    :goto_1
    return v5

    .line 98
    .restart local v4    # "pakname":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v4    # "pakname":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkSetSystemTheme(Ljava/lang/String;)Z
    .locals 2
    .param p1, "themePackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 204
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    .line 208
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6
    .param p1, "themePackageName"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 222
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 224
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 230
    :cond_0
    :goto_0
    return-object v2

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LaunchIconThemeResource"

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

    .line 227
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDrawableFromThemeResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "themeres"    # Landroid/content/res/Resources;
    .param p2, "themeIconID"    # I

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 315
    if-eqz p1, :cond_0

    .line 317
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 324
    :cond_0
    :goto_0
    return-object v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LaunchIconThemeResource"

    const-string v3, "getDrawable failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDrawableIconStrFromThemePackageFromSer(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 269
    .local v0, "asetfile":Ljava/lang/String;
    const/4 v2, 0x0

    .line 270
    .local v2, "iconname":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    invoke-interface {v3, p1, p2}, Lcom/lenovo/launchericontheme/ILaunchIconThemeService;->getDrawableIconStrFromThemePackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 271
    const-string v3, "jiayh2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LaunchIconThemeResourcegetDrawable packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " asetfile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    if-nez v0, :cond_0

    .line 273
    const/4 v3, 0x0

    .line 280
    :goto_0
    return-object v3

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 278
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v0

    .line 280
    goto :goto_0
.end method

.method private getNewDrawableExtendFromSer(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "ret":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 300
    .local v2, "themeIconID":I
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    invoke-interface {v3, p1, p2}, Lcom/lenovo/launchericontheme/ILaunchIconThemeService;->getDrawableIconIDFromThemePackageExtend(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 305
    :goto_0
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResourceExtend:Landroid/content/res/Resources;

    if-nez v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageNameExtend:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResourceExtend:Landroid/content/res/Resources;

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResourceExtend:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v2}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->getDrawableFromThemeResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 309
    return-object v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LaunchIconThemeResource"

    const-string v4, "getNewDrawableExtendFromSer failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNewDrawableFromSer(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "ret":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 287
    .local v2, "themeIconID":I
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    invoke-interface {v3, p1, p2}, Lcom/lenovo/launchericontheme/ILaunchIconThemeService;->getDrawableIconIDFromThemePackage(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 292
    :goto_0
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v2}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->getDrawableFromThemeResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 293
    return-object v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LaunchIconThemeResource"

    const-string v4, "getNewDrawableFromSer failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initBroadcastReceiver()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;

    invoke-direct {v0, p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private initIntentFilter()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->checkNeedToRegisterBroadcastReceiver()Z

    move-result v0

    .line 83
    .local v0, "beneedreg":Z
    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->registerThemeChangeReceiver()V

    goto :goto_0
.end method

.method private readyDesktopThemeObserver()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LaunchIconThemeResource"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mHandlerthread:Landroid/os/HandlerThread;

    .line 157
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    new-instance v0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$2;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$2;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mDesktopThemeObserver:Landroid/database/ContentObserver;

    .line 167
    return-void
.end method

.method private registerThemeChangeReceiver()V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->initBroadcastReceiver()V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UPDATE_LOCAL_THEME"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method private registerThemeFieldNameContentObserver()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lenovo_desktop_theme"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mDesktopThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LaunchIconThemeResource has null exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSystemTheme(Ljava/lang/String;)V
    .locals 4
    .param p1, "themePackageName"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->checkSetSystemTheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    monitor-exit v1

    .line 201
    :goto_0
    return-void

    .line 179
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p1, :cond_4

    const-string v0, ">DEFAULT THEME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    :cond_1
    const-string v0, "com.lenovo.launcher"

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 189
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 200
    :cond_3
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 183
    :cond_4
    :try_start_1
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    goto :goto_1

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 196
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-nez v0, :cond_3

    .line 197
    const-string v0, "LaunchIconThemeResource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to createThemeResource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    const/4 v3, 0x0

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "ret":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 237
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    if-nez v5, :cond_1

    .line 238
    :cond_0
    monitor-exit v4

    .line 261
    :goto_0
    return-object v3

    .line 242
    :cond_1
    const/4 v2, 0x0

    .line 244
    .local v2, "themeIconID":I
    invoke-direct {p0, p1, p2}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->getDrawableIconStrFromThemePackageFromSer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "asetfile":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 246
    monitor-exit v4

    goto :goto_0

    .line 262
    .end local v0    # "asetfile":Ljava/lang/String;
    .end local v2    # "themeIconID":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 256
    .restart local v0    # "asetfile":Ljava/lang/String;
    .restart local v2    # "themeIconID":I
    :cond_2
    if-nez v1, :cond_3

    .line 257
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->getNewDrawableExtendFromSer(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 261
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    goto :goto_0
.end method
