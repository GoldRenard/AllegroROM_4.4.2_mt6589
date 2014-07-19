.class public abstract Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;
.super Ljava/lang/Object;
.source "BrightnessAdjuestStrategy.java"


# static fields
.field private static final NEW_VALUE_STEP:I = 0x14


# instance fields
.field protected mDelta:F

.field protected mGenerateValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mStartValue:I

.field protected mStepsCount:I

.field protected mTargetValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    .line 16
    iput v1, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mStepsCount:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProcessedData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    return-object v0
.end method

.method public abstract init(II)V
.end method

.method public setStepCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 21
    if-lez p1, :cond_0

    .line 22
    iput p1, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mStepsCount:I

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mStepsCount:I

    goto :goto_0
.end method
