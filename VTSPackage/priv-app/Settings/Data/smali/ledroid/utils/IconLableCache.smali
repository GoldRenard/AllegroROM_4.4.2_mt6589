.class public final Lledroid/utils/IconLableCache;
.super Ljava/lang/Object;
.source "IconLableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/utils/IconLableCache$1;,
        Lledroid/utils/IconLableCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "IconCache"

.field private static sInstance:Lledroid/utils/IconLableCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Comparable",
            "<*>;",
            "Lledroid/utils/IconLableCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lledroid/utils/IconLableCache;

    invoke-direct {v0}, Lledroid/utils/IconLableCache;-><init>()V

    sput-object v0, Lledroid/utils/IconLableCache;->sInstance:Lledroid/utils/IconLableCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    .line 61
    invoke-direct {p0}, Lledroid/utils/IconLableCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lledroid/utils/IconLableCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 62
    return-void
.end method

.method private cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconLableCache$CacheEntry;
    .locals 4
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 332
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 333
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/utils/IconLableCache$CacheEntry;

    .line 334
    .local v0, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    if-nez v0, :cond_1

    .line 335
    new-instance v0, Lledroid/utils/IconLableCache$CacheEntry;

    .end local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lledroid/utils/IconLableCache$CacheEntry;-><init>(Lledroid/utils/IconLableCache$1;)V

    .line 336
    .restart local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    # setter for: Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;
    invoke-static {v0, v2}, Lledroid/utils/IconLableCache$CacheEntry;->access$102(Lledroid/utils/IconLableCache$CacheEntry;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 337
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;
    invoke-static {v0}, Lledroid/utils/IconLableCache$CacheEntry;->access$100(Lledroid/utils/IconLableCache$CacheEntry;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    .line 338
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    # setter for: Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;
    invoke-static {v0, v2}, Lledroid/utils/IconLableCache$CacheEntry;->access$102(Lledroid/utils/IconLableCache$CacheEntry;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 340
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconLableCache;->getFullResIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lledroid/utils/IconLableCache;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lledroid/utils/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lledroid/utils/IconLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lledroid/utils/IconLableCache$CacheEntry;->access$002(Lledroid/utils/IconLableCache$CacheEntry;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 342
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_1
    return-object v0
.end method

.method private cacheLocked(Landroid/content/pm/PackageInfo;)Lledroid/utils/IconLableCache$CacheEntry;
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 328
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0}, Lledroid/utils/IconLableCache;->cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconLableCache$CacheEntry;

    move-result-object v0

    return-object v0
.end method

.method private cacheLocked(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconLableCache$CacheEntry;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lledroid/utils/IconLableCache;->packageNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/utils/IconLableCache$CacheEntry;

    .line 350
    .local v0, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    if-nez v0, :cond_1

    .line 351
    new-instance v0, Lledroid/utils/IconLableCache$CacheEntry;

    .end local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lledroid/utils/IconLableCache$CacheEntry;-><init>(Lledroid/utils/IconLableCache$1;)V

    .line 352
    .restart local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    # setter for: Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;
    invoke-static {v0, v2}, Lledroid/utils/IconLableCache$CacheEntry;->access$102(Lledroid/utils/IconLableCache$CacheEntry;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 353
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;
    invoke-static {v0}, Lledroid/utils/IconLableCache$CacheEntry;->access$100(Lledroid/utils/IconLableCache$CacheEntry;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    .line 354
    invoke-direct {p0, p1}, Lledroid/utils/IconLableCache;->nameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;
    invoke-static {v0, v2}, Lledroid/utils/IconLableCache$CacheEntry;->access$102(Lledroid/utils/IconLableCache$CacheEntry;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 356
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconLableCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lledroid/utils/IconLableCache;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lledroid/utils/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lledroid/utils/IconLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lledroid/utils/IconLableCache$CacheEntry;->access$002(Lledroid/utils/IconLableCache$CacheEntry;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 358
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_1
    return-object v0
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-direct {p0, v0, v1}, Lledroid/utils/IconLableCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 115
    :try_start_0
    iget-object v3, p0, Lledroid/utils/IconLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v1

    .line 122
    .local v1, "iconId":I
    if-eqz v1, :cond_0

    .line 123
    invoke-direct {p0, v2, v1}, Lledroid/utils/IconLableCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 126
    .end local v1    # "iconId":I
    :goto_1
    return-object v3

    .line 117
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 126
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconLableCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private getFullResIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 132
    :try_start_0
    iget-object v3, p0, Lledroid/utils/IconLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 136
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 137
    iget v1, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 138
    .local v1, "iconId":I
    if-eqz v1, :cond_0

    .line 139
    invoke-direct {p0, v2, v1}, Lledroid/utils/IconLableCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 142
    .end local v1    # "iconId":I
    :goto_1
    return-object v3

    .line 133
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 142
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconLableCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 108
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lledroid/utils/IconLableCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 85
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconLableCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public static getIconCacheInstance(Landroid/content/Context;)Lledroid/utils/IconLableCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lledroid/utils/IconLableCache;->sInstance:Lledroid/utils/IconLableCache;

    iget-object v0, v0, Lledroid/utils/IconLableCache;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lledroid/utils/IconLableCache;->sInstance:Lledroid/utils/IconLableCache;

    iget-object v0, v0, Lledroid/utils/IconLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_1

    .line 66
    :cond_0
    sget-object v0, Lledroid/utils/IconLableCache;->sInstance:Lledroid/utils/IconLableCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lledroid/utils/IconLableCache;->mContext:Landroid/content/Context;

    .line 67
    sget-object v0, Lledroid/utils/IconLableCache;->sInstance:Lledroid/utils/IconLableCache;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lledroid/utils/IconLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 69
    :cond_1
    sget-object v0, Lledroid/utils/IconLableCache;->sInstance:Lledroid/utils/IconLableCache;

    return-object v0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 146
    invoke-direct {p0}, Lledroid/utils/IconLableCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 147
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 154
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    :cond_0
    return-object v0
.end method

.method private nameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 320
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 323
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private packageNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 310
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 315
    :goto_0
    return-object v0

    .line 312
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 174
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllIcons()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Comparable",
            "<*>;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v5, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 365
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 366
    .local v3, "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Comparable<*>;Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 367
    .local v2, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    iget-object v4, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/utils/IconLableCache$CacheEntry;

    .line 368
    .local v0, "e":Lledroid/utils/IconLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lledroid/utils/IconLableCache$CacheEntry;->access$000(Lledroid/utils/IconLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 371
    .end local v0    # "e":Lledroid/utils/IconLableCache$CacheEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    .end local v3    # "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Comparable<*>;Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 370
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Comparable<*>;Landroid/graphics/Bitmap;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 97
    :try_start_0
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 102
    invoke-direct {p0, v1, p2}, Lledroid/utils/IconLableCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 104
    :goto_1
    return-object v2

    .line 98
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 104
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconLableCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    iget-object v4, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 179
    :try_start_0
    iget-object v3, p0, Lledroid/utils/IconLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 180
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 183
    :cond_0
    iget-object v3, p0, Lledroid/utils/IconLableCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v4

    .line 187
    :goto_0
    return-object v3

    .line 186
    :cond_1
    invoke-direct {p0, v2}, Lledroid/utils/IconLableCache;->cacheLocked(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconLableCache$CacheEntry;

    move-result-object v0

    .line 187
    .local v0, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lledroid/utils/IconLableCache$CacheEntry;->access$000(Lledroid/utils/IconLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 188
    .end local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 250
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 251
    if-nez p1, :cond_0

    .line 252
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 256
    :goto_0
    return-object v1

    .line 255
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconLableCache;->cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconLableCache$CacheEntry;

    move-result-object v0

    .line 256
    .local v0, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lledroid/utils/IconLableCache$CacheEntry;->access$000(Lledroid/utils/IconLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 257
    .end local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/pm/PackageInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 228
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 229
    if-nez p1, :cond_0

    .line 230
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 234
    :goto_0
    return-object v1

    .line 233
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconLableCache;->cacheLocked(Landroid/content/pm/PackageInfo;)Lledroid/utils/IconLableCache$CacheEntry;

    move-result-object v0

    .line 234
    .local v0, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lledroid/utils/IconLableCache$CacheEntry;->access$000(Lledroid/utils/IconLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 235
    .end local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 206
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 212
    :goto_0
    return-object v1

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconLableCache;->cacheLocked(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconLableCache$CacheEntry;

    move-result-object v0

    .line 212
    .local v0, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lledroid/utils/IconLableCache$CacheEntry;->access$000(Lledroid/utils/IconLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 213
    .end local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v4, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 273
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    const/4 v3, 0x0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :goto_0
    return-object v3

    .line 276
    :cond_0
    const/4 v2, 0x0

    .line 278
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v3, p0, Lledroid/utils/IconLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 283
    :try_start_2
    invoke-direct {p0, v2}, Lledroid/utils/IconLableCache;->cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconLableCache$CacheEntry;

    move-result-object v1

    .line 284
    .local v1, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lledroid/utils/IconLableCache$CacheEntry;->access$000(Lledroid/utils/IconLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 285
    .end local v1    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 279
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    iget-object v3, p0, Lledroid/utils/IconLableCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getLable(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 192
    iget-object v4, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 193
    :try_start_0
    iget-object v3, p0, Lledroid/utils/IconLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 194
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 197
    :cond_0
    const/4 v3, 0x0

    monitor-exit v4

    .line 201
    :goto_0
    return-object v3

    .line 200
    :cond_1
    invoke-direct {p0, v2}, Lledroid/utils/IconLableCache;->cacheLocked(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconLableCache$CacheEntry;

    move-result-object v0

    .line 201
    .local v0, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;
    invoke-static {v0}, Lledroid/utils/IconLableCache$CacheEntry;->access$100(Lledroid/utils/IconLableCache$CacheEntry;)Ljava/lang/CharSequence;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 202
    .end local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getLable(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 261
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 262
    if-nez p1, :cond_0

    .line 263
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 267
    :goto_0
    return-object v1

    .line 266
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconLableCache;->cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconLableCache$CacheEntry;

    move-result-object v0

    .line 267
    .local v0, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;
    invoke-static {v0}, Lledroid/utils/IconLableCache$CacheEntry;->access$100(Lledroid/utils/IconLableCache$CacheEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 268
    .end local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLable(Landroid/content/pm/PackageInfo;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 239
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 240
    if-nez p1, :cond_0

    .line 241
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 245
    :goto_0
    return-object v1

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconLableCache;->cacheLocked(Landroid/content/pm/PackageInfo;)Lledroid/utils/IconLableCache$CacheEntry;

    move-result-object v0

    .line 245
    .local v0, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;
    invoke-static {v0}, Lledroid/utils/IconLableCache$CacheEntry;->access$100(Lledroid/utils/IconLableCache$CacheEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 246
    .end local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLable(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 217
    iget-object v2, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 218
    if-nez p1, :cond_0

    .line 219
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 223
    :goto_0
    return-object v1

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconLableCache;->cacheLocked(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconLableCache$CacheEntry;

    move-result-object v0

    .line 223
    .local v0, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;
    invoke-static {v0}, Lledroid/utils/IconLableCache$CacheEntry;->access$100(Lledroid/utils/IconLableCache$CacheEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 224
    .end local v0    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLable(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v4, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 290
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    const/4 p1, 0x0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .end local p1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 293
    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 295
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v3, p0, Lledroid/utils/IconLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 300
    :try_start_2
    invoke-direct {p0, v2}, Lledroid/utils/IconLableCache;->cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconLableCache$CacheEntry;

    move-result-object v1

    .line 301
    .local v1, "entry":Lledroid/utils/IconLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;
    invoke-static {v1}, Lledroid/utils/IconLableCache$CacheEntry;->access$100(Lledroid/utils/IconLableCache$CacheEntry;)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "packageName":Ljava/lang/String;
    monitor-exit v4

    goto :goto_0

    .line 302
    .end local v1    # "entry":Lledroid/utils/IconLableCache$CacheEntry;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 296
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 306
    iget-object v0, p0, Lledroid/utils/IconLableCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v1, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lledroid/utils/IconLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
