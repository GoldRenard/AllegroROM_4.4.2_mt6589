.class final Lledroid/utils/IconAndLableCache$CacheEntry;
.super Ljava/lang/Object;
.source "IconAndLableCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/utils/IconAndLableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheEntry"
.end annotation


# instance fields
.field private icon:Landroid/graphics/Bitmap;

.field private lable:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lledroid/utils/IconAndLableCache$1;)V
    .locals 0
    .param p1, "x0"    # Lledroid/utils/IconAndLableCache$1;

    .prologue
    .line 45
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache$CacheEntry;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lledroid/utils/IconAndLableCache$CacheEntry;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lledroid/utils/IconAndLableCache$CacheEntry;

    .prologue
    .line 45
    iget-object v0, p0, Lledroid/utils/IconAndLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lledroid/utils/IconAndLableCache$CacheEntry;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lledroid/utils/IconAndLableCache$CacheEntry;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    iput-object p1, p0, Lledroid/utils/IconAndLableCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lledroid/utils/IconAndLableCache$CacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lledroid/utils/IconAndLableCache$CacheEntry;

    .prologue
    .line 45
    iget-object v0, p0, Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lledroid/utils/IconAndLableCache$CacheEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lledroid/utils/IconAndLableCache$CacheEntry;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lledroid/utils/IconAndLableCache$CacheEntry;->lable:Ljava/lang/String;

    return-object p1
.end method
