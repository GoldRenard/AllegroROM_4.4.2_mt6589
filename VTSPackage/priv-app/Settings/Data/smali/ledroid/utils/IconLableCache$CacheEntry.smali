.class final Lledroid/utils/IconLableCache$CacheEntry;
.super Ljava/lang/Object;
.source "IconLableCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/utils/IconLableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheEntry"
.end annotation


# instance fields
.field private icon:Landroid/graphics/Bitmap;

.field private lable:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lledroid/utils/IconLableCache$1;)V
    .locals 0
    .param p1, "x0"    # Lledroid/utils/IconLableCache$1;

    .prologue
    .line 45
    invoke-direct {p0}, Lledroid/utils/IconLableCache$CacheEntry;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lledroid/utils/IconLableCache$CacheEntry;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lledroid/utils/IconLableCache$CacheEntry;

    .prologue
    .line 45
    iget-object v0, p0, Lledroid/utils/IconLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lledroid/utils/IconLableCache$CacheEntry;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lledroid/utils/IconLableCache$CacheEntry;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    iput-object p1, p0, Lledroid/utils/IconLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lledroid/utils/IconLableCache$CacheEntry;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lledroid/utils/IconLableCache$CacheEntry;

    .prologue
    .line 45
    iget-object v0, p0, Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$102(Lledroid/utils/IconLableCache$CacheEntry;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lledroid/utils/IconLableCache$CacheEntry;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 45
    iput-object p1, p0, Lledroid/utils/IconLableCache$CacheEntry;->lable:Ljava/lang/CharSequence;

    return-object p1
.end method
