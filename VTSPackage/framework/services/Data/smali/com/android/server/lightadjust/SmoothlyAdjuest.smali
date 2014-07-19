.class public Lcom/android/server/lightadjust/SmoothlyAdjuest;
.super Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;
.source "SmoothlyAdjuest.java"


# static fields
.field private static final DECREASE_DELTA:F = -1.0f

.field private static final INCREASE_DELTA:F = 1.0f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;-><init>()V

    .line 14
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mDelta:F

    .line 15
    return-void
.end method


# virtual methods
.method public init(II)V
    .locals 6
    .param p1, "begin_value"    # I
    .param p2, "target_value"    # I

    .prologue
    .line 19
    if-ne p1, p2, :cond_0

    .line 21
    iget-object v3, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :goto_0
    return-void

    .line 24
    :cond_0
    iput p1, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mStartValue:I

    .line 25
    iput p2, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mTargetValue:I

    .line 27
    iget-object v3, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 28
    sub-int v3, p2, p1

    iget v4, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mDelta:F

    float-to-int v4, v4

    div-int v1, v3, v4

    .line 29
    .local v1, "steps":I
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "steps="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "sum":I
    if-gez v1, :cond_1

    .line 32
    const/high16 v3, -0x40800000

    iput v3, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mDelta:F

    .line 34
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 35
    int-to-float v3, v2

    iget v4, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mDelta:F

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 36
    iget-object v3, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    add-int v4, v2, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_2
    add-int v3, v2, p1

    if-ge v3, p2, :cond_3

    .line 40
    iget-object v3, p0, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_3
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smoothly-->start="

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

    .line 44
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

    goto/16 :goto_0
.end method
