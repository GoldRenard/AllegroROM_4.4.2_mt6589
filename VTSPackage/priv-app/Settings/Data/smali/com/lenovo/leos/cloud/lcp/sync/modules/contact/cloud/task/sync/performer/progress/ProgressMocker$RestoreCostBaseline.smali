.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$RestoreCostBaseline;
.super Ljava/lang/Object;
.source "ProgressMocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoreCostBaseline"
.end annotation


# static fields
.field private static final CONTACT_COST_STEP_SIZE:I = 0x64

.field private static final contactBaseCost:F = 17.0f

.field private static final contactStepCost:F = 4.8f

.field private static final onePortraitCost:F = 1.8f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeBackupCost(II)F
    .locals 4
    .param p0, "contactNumber"    # I
    .param p1, "portraitNumber"    # I

    .prologue
    .line 327
    if-gtz p0, :cond_0

    if-gtz p1, :cond_0

    .line 328
    const/4 v2, 0x0

    .line 339
    :goto_0
    return v2

    .line 331
    :cond_0
    const/4 v0, 0x0

    .line 332
    .local v0, "contactCost":F
    if-lez p0, :cond_1

    .line 333
    div-int/lit8 v2, p0, 0x64

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    const v3, 0x4099999a

    mul-float v0, v2, v3

    .line 335
    :cond_1
    const/4 v1, 0x0

    .line 336
    .local v1, "portraitCost":F
    if-lez p1, :cond_2

    .line 337
    int-to-float v2, p1

    const v3, 0x3fe66666

    mul-float v1, v2, v3

    .line 339
    :cond_2
    const/high16 v2, 0x41880000

    add-float/2addr v2, v0

    add-float/2addr v2, v1

    goto :goto_0
.end method
