.class public final Lledroid/utils/IconAndLableCache;
.super Ljava/lang/Object;
.source "IconAndLableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/utils/IconAndLableCache$1;,
        Lledroid/utils/IconAndLableCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "IconCache"

.field private static sInstance:Lledroid/utils/IconAndLableCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lledroid/utils/IconAndLableCache$CacheEntry;",
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
    .line 59
    new-instance v0, Lledroid/utils/IconAndLableCache;

    invoke-direct {v0}, Lledroid/utils/IconAndLableCache;-><init>()V

    sput-object v0, Lledroid/utils/IconAndLableCache;->sInstance:Lledroid/utils/IconAndLableCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    .line 63
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lledroid/utils/IconAndLableCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 64
    return-void
.end method

.method private cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;
    .locals 4
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 334
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 335
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/utils/IconAndLableCache$CacheEntry;

    .line 336
    .local v0, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    if-nez v0, :cond_1

    .line 337
    new-instance v0, Lledroid/utils/IconAndLableCache$CacheEntry;

    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lledroid/utils/IconAndLableCache$CacheEntry;-><init>(Lledroid/utils/IconAndLableCache$1;)V

    .line 338
    .restart local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;
    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$102(Lledroid/utils/IconAndLableCache$CacheEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$100(Lledroid/utils/IconAndLableCache$CacheEntry;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 340
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    # setter for: Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;
    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$102(Lledroid/utils/IconAndLableCache$CacheEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->getFullResIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lledroid/utils/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lledroid/utils/IconAndLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$002(Lledroid/utils/IconAndLableCache$CacheEntry;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 344
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_1
    return-object v0
.end method

.method private cacheLocked(Landroid/content/pm/PackageInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 330
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0}, Lledroid/utils/IconAndLableCache;->cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;

    move-result-object v0

    return-object v0
.end method

.method private cacheLocked(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->packageNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/utils/IconAndLableCache$CacheEntry;

    .line 352
    .local v0, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    if-nez v0, :cond_1

    .line 353
    new-instance v0, Lledroid/utils/IconAndLableCache$CacheEntry;

    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lledroid/utils/IconAndLableCache$CacheEntry;-><init>(Lledroid/utils/IconAndLableCache$1;)V

    .line 354
    .restart local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;
    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$102(Lledroid/utils/IconAndLableCache$CacheEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$100(Lledroid/utils/IconAndLableCache$CacheEntry;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 356
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->nameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;
    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$102(Lledroid/utils/IconAndLableCache$CacheEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lledroid/utils/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lledroid/utils/IconAndLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$002(Lledroid/utils/IconAndLableCache$CacheEntry;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 360
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_1
    return-object v0
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-direct {p0, v0, v1}, Lledroid/utils/IconAndLableCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 117
    :try_start_0
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 122
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v1

    .line 124
    .local v1, "iconId":I
    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0, v2, v1}, Lledroid/utils/IconAndLableCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 128
    .end local v1    # "iconId":I
    :goto_1
    return-object v3

    .line 119
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 128
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private getFullResIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 134
    :try_start_0
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 138
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 139
    iget v1, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 140
    .local v1, "iconId":I
    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0, v2, v1}, Lledroid/utils/IconAndLableCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 144
    .end local v1    # "iconId":I
    :goto_1
    return-object v3

    .line 135
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 144
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 110
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lledroid/utils/IconAndLableCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 87
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public static getIconCacheInstance(Landroid/content/Context;)Lledroid/utils/IconAndLableCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lledroid/utils/IconAndLableCache;->sInstance:Lledroid/utils/IconAndLableCache;

    iget-object v0, v0, Lledroid/utils/IconAndLableCache;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lledroid/utils/IconAndLableCache;->sInstance:Lledroid/utils/IconAndLableCache;

    iget-object v0, v0, Lledroid/utils/IconAndLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    sget-object v0, Lledroid/utils/IconAndLableCache;->sInstance:Lledroid/utils/IconAndLableCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lledroid/utils/IconAndLableCache;->mContext:Landroid/content/Context;

    .line 69
    sget-object v0, Lledroid/utils/IconAndLableCache;->sInstance:Lledroid/utils/IconAndLableCache;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lledroid/utils/IconAndLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 71
    :cond_1
    sget-object v0, Lledroid/utils/IconAndLableCache;->sInstance:Lledroid/utils/IconAndLableCache;

    return-object v0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 148
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 149
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

    .line 152
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 156
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    :cond_0
    return-object v0
.end method

.method private nameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 322
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 325
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
    .line 312
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 317
    :goto_0
    return-object v0

    .line 314
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 176
    monitor-exit v1

    .line 177
    return-void

    .line 176
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
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v5, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 367
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v3, "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

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

    check-cast v2, Ljava/lang/String;

    .line 369
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/utils/IconAndLableCache$CacheEntry;

    .line 370
    .local v0, "e":Lledroid/utils/IconAndLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$000(Lledroid/utils/IconAndLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 373
    .end local v0    # "e":Lledroid/utils/IconAndLableCache$CacheEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 372
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
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
    .line 99
    :try_start_0
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 104
    invoke-direct {p0, v1, p2}, Lledroid/utils/IconAndLableCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 106
    :goto_1
    return-object v2

    .line 100
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 106
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    iget-object v4, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 181
    :try_start_0
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 182
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 185
    :cond_0
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v4

    .line 189
    :goto_0
    return-object v3

    .line 188
    :cond_1
    invoke-direct {p0, v2}, Lledroid/utils/IconAndLableCache;->cacheLocked(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;

    move-result-object v0

    .line 189
    .local v0, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$000(Lledroid/utils/IconAndLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 190
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
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
    .line 252
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 253
    if-nez p1, :cond_0

    .line 254
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 258
    :goto_0
    return-object v1

    .line 257
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;

    move-result-object v0

    .line 258
    .local v0, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$000(Lledroid/utils/IconAndLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 259
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
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
    .line 230
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 231
    if-nez p1, :cond_0

    .line 232
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 236
    :goto_0
    return-object v1

    .line 235
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->cacheLocked(Landroid/content/pm/PackageInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;

    move-result-object v0

    .line 236
    .local v0, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$000(Lledroid/utils/IconAndLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 237
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
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
    .line 208
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 214
    :goto_0
    return-object v1

    .line 213
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->cacheLocked(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;

    move-result-object v0

    .line 214
    .local v0, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$000(Lledroid/utils/IconAndLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 215
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
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
    .line 274
    iget-object v4, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 275
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    const/4 v3, 0x0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :goto_0
    return-object v3

    .line 278
    :cond_0
    const/4 v2, 0x0

    .line 280
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 285
    :try_start_2
    invoke-direct {p0, v2}, Lledroid/utils/IconAndLableCache;->cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;

    move-result-object v1

    .line 286
    .local v1, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$000(Lledroid/utils/IconAndLableCache$CacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 287
    .end local v1    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 281
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getLable(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    iget-object v4, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 195
    :try_start_0
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 196
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 199
    :cond_0
    const/4 v3, 0x0

    monitor-exit v4

    .line 203
    :goto_0
    return-object v3

    .line 202
    :cond_1
    invoke-direct {p0, v2}, Lledroid/utils/IconAndLableCache;->cacheLocked(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;

    move-result-object v0

    .line 203
    .local v0, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$100(Lledroid/utils/IconAndLableCache$CacheEntry;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 204
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getLable(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 263
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 264
    if-nez p1, :cond_0

    .line 265
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 269
    :goto_0
    return-object v1

    .line 268
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;

    move-result-object v0

    .line 269
    .local v0, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$100(Lledroid/utils/IconAndLableCache$CacheEntry;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 270
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLable(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 241
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 242
    if-nez p1, :cond_0

    .line 243
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 247
    :goto_0
    return-object v1

    .line 246
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->cacheLocked(Landroid/content/pm/PackageInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;

    move-result-object v0

    .line 247
    .local v0, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$100(Lledroid/utils/IconAndLableCache$CacheEntry;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 248
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLable(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 219
    iget-object v2, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 225
    :goto_0
    return-object v1

    .line 224
    :cond_0
    invoke-direct {p0, p1}, Lledroid/utils/IconAndLableCache;->cacheLocked(Landroid/content/pm/ResolveInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;

    move-result-object v0

    .line 225
    .local v0, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;
    invoke-static {v0}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$100(Lledroid/utils/IconAndLableCache$CacheEntry;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 226
    .end local v0    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLable(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v4, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 292
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const/4 p1, 0x0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local p1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 295
    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 297
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v3, p0, Lledroid/utils/IconAndLableCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 302
    :try_start_2
    invoke-direct {p0, v2}, Lledroid/utils/IconAndLableCache;->cacheLocked(Landroid/content/pm/ApplicationInfo;)Lledroid/utils/IconAndLableCache$CacheEntry;

    move-result-object v1

    .line 303
    .local v1, "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    # getter for: Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;
    invoke-static {v1}, Lledroid/utils/IconAndLableCache$CacheEntry;->access$100(Lledroid/utils/IconAndLableCache$CacheEntry;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "packageName":Ljava/lang/String;
    monitor-exit v4

    goto :goto_0

    .line 304
    .end local v1    # "entry":Lledroid/utils/IconAndLableCache$CacheEntry;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 298
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 299
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
    .line 308
    iget-object v0, p0, Lledroid/utils/IconAndLableCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v1, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lledroid/utils/IconAndLableCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
