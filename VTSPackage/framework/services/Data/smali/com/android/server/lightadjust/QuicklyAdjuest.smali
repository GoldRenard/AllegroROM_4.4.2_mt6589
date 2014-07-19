.class public Lcom/android/server/lightadjust/QuicklyAdjuest;
.super Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;
.source "QuicklyAdjuest.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;-><init>()V

    .line 11
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mDelta:F

    .line 12
    return-void
.end method


# virtual methods
.method public init(II)V
    .locals 6
    .param p1, "begin_value"    # I
    .param p2, "target_value"    # I

    .prologue
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    iget-object v3, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :goto_0
    return-void

    .line 20
    :cond_0
    iput p1, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mStartValue:I

    .line 21
    iput p2, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mTargetValue:I

    .line 22
    sub-int v3, p2, p1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mStepsCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mDelta:F

    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, "sum":F
    const/4 v2, 0x0

    .line 26
    .local v2, "tempValue":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mStepsCount:I

    if-gt v0, v3, :cond_1

    .line 27
    iget v3, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mStartValue:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v2, v3

    .line 28
    iget-object v3, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget v3, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mDelta:F

    add-float/2addr v1, v3

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    :cond_1
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quickly-->start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mStartValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mTargetValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->list="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
