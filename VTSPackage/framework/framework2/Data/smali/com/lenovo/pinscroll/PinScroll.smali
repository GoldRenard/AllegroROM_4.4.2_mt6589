.class public Lcom/lenovo/pinscroll/PinScroll;
.super Ljava/lang/Object;
.source "PinScroll.java"


# static fields
.field public static final FEATURE_DISABLE_PIN_SCROLL:Ljava/lang/String; = "com.lenovo.pinscroll.disable"

.field public static final FEATURE_ENABLE_PIN_SCROLL:Ljava/lang/String; = "com.lenovo.pinscroll.enable"

.field private static mSupport:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, -0x1

    sput v0, Lcom/lenovo/pinscroll/PinScroll;->mSupport:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static isOn(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 55
    const/4 v1, 0x1

    .line 58
    .local v1, "value":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pin_scroll"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 65
    :goto_0
    if-lez v1, :cond_0

    :goto_1
    return v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pin_scroll"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    sget v2, Lcom/lenovo/pinscroll/PinScroll;->mSupport:I

    if-ltz v2, :cond_2

    .line 19
    sget v2, Lcom/lenovo/pinscroll/PinScroll;->mSupport:I

    if-lez v2, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 19
    goto :goto_0

    .line 22
    :cond_2
    invoke-static {p0}, Lcom/lenovo/pinscroll/PinScroll;->localIsSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    sput v2, Lcom/lenovo/pinscroll/PinScroll;->mSupport:I

    .line 24
    sget v2, Lcom/lenovo/pinscroll/PinScroll;->mSupport:I

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 22
    goto :goto_1
.end method

.method private static localIsSupport(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v0

    .line 32
    .local v0, "isLarge":Z
    invoke-virtual {p0}, Landroid/content/Context;->isCts()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.lenovo.pinscroll.enable"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.lenovo.pinscroll.disable"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    if-eqz v0, :cond_0

    .line 50
    const/4 v1, 0x1

    goto :goto_0
.end method
