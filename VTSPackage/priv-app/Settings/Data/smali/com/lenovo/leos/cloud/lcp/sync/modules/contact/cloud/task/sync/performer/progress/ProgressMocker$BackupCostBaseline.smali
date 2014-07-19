.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$BackupCostBaseline;
.super Ljava/lang/Object;
.source "ProgressMocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupCostBaseline"
.end annotation


# static fields
.field private static final CONTACT_COST_STEP_SIZE:I = 0x64

.field private static final contactBaseCost:F = 8.0f

.field private static final contactStepCost:F = 0.45f

.field private static final onePortraitCost:F = 2.2f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeBackupCost(II)F
    .locals 4
    .param p0, "contactNumber"    # I
    .param p1, "portraitNumber"    # I

    .prologue
    .line 304
    if-gtz p0, :cond_0

    if-gtz p1, :cond_0

    .line 305
    const/4 v2, 0x0

    .line 316
    :goto_0
    return v2

    .line 308
    :cond_0
    const/4 v0, 0x0

    .line 309
    .local v0, "contactCost":F
    if-lez p0, :cond_1

    .line 310
    div-int/lit8 v2, p0, 0x64

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    const v3, 0x3ee66666

    mul-float v0, v2, v3

    .line 312
    :cond_1
    const/4 v1, 0x0

    .line 313
    .local v1, "portraitCost":F
    if-lez p1, :cond_2

    .line 314
    int-to-float v2, p1

    const v3, 0x400ccccd

    mul-float v1, v2, v3

    .line 316
    :cond_2
    const/high16 v2, 0x41000000

    add-float/2addr v2, v0

    add-float/2addr v2, v1

    goto :goto_0
.end method
