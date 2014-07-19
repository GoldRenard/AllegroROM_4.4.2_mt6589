.class public Lcom/android/server/lightadjust/ScreenBrightnessManager;
.super Ljava/lang/Object;
.source "ScreenBrightnessManager.java"


# instance fields
.field private isCurrentBrightnessInit:Z

.field private final mContext:Landroid/content/Context;

.field private mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

.field private mCurrentBrightness:I

.field private mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

.field private mStateContext:Lcom/android/server/lightadjust/StateContext;

.field private mTargetBrightness:I


# direct methods
.method public constructor <init>(Lcom/android/server/lightadjust/LightAdjuestCore;Landroid/content/Context;)V
    .locals 4
    .param p1, "core"    # Lcom/android/server/lightadjust/LightAdjuestCore;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->isCurrentBrightnessInit:Z

    .line 40
    iput-object p1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    .line 41
    iput-object p2, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mContext:Landroid/content/Context;

    .line 42
    new-instance v1, Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-direct {v1, p2, p0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;-><init>(Landroid/content/Context;Lcom/android/server/lightadjust/ScreenBrightnessManager;)V

    iput-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    .line 43
    new-instance v1, Lcom/android/server/lightadjust/StateContext;

    iget-object v2, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    iget-object v3, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/lightadjust/StateContext;-><init>(Lcom/android/server/lightadjust/ScreenBrightnessManager;Lcom/android/server/lightadjust/LightAdjuestCore;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    .line 44
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 46
    .local v0, "is_support_max_contrast":Z
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-virtual {v1, v0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->setSupportLcdMaxContrast(Z)V

    .line 47
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    iget-object v2, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    invoke-virtual {v2}, Lcom/android/server/lightadjust/StateContext;->getBrightStateBoundaryMinValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->setBrightStateLcdBrightnessMinValue(I)V

    .line 48
    return-void
.end method

.method private adjustBrightnessStart(I)V
    .locals 12
    .param p1, "value"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 128
    iget v9, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    if-ne v9, p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v9, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    iget-object v10, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    invoke-virtual {v10}, Lcom/android/server/lightadjust/StateContext;->getBrightStateBoundaryMinValue()I

    move-result v10

    if-le v9, v10, :cond_3

    move v2, v7

    .line 135
    .local v2, "current_bright":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    invoke-virtual {v9}, Lcom/android/server/lightadjust/StateContext;->getBrightStateBoundaryMinValue()I

    move-result v9

    if-gt p1, v9, :cond_4

    move v6, v7

    .line 136
    .local v6, "target_nonbright":Z
    :goto_2
    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    .line 137
    iget-object v9, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    invoke-virtual {v9}, Lcom/android/server/lightadjust/StateContext;->getBrightStateBoundaryMinValue()I

    move-result p1

    .line 138
    iget-object v9, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    invoke-virtual {v9}, Lcom/android/server/lightadjust/StateContext;->getState()Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->setInitValue(I)V

    .line 141
    :cond_2
    iget-object v9, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    invoke-virtual {v9}, Lcom/android/server/lightadjust/StateContext;->getBrightStateBoundaryMinValue()I

    move-result v9

    if-lt p1, v9, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->getFadeBrightnessChangesSmoothly()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 147
    const-string v9, "AUTOADJUST"

    const-string v10, "Smoothly adjuest"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/android/server/lightadjust/SmoothlyAdjuest;

    invoke-direct {v0}, Lcom/android/server/lightadjust/SmoothlyAdjuest;-><init>()V

    .line 149
    .local v0, "adjuest":Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Smoothly begin--["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->sendLogInfo(Ljava/lang/String;)V

    .line 157
    :goto_3
    iget v9, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    invoke-virtual {v0, v9, p1}, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->init(II)V

    .line 158
    iget v9, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    sub-int v9, p1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 159
    .local v1, "current2target_Delta":I
    iput p1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mTargetBrightness:I

    .line 161
    iget-object v9, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->getProcessedData()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->initValueList(Ljava/util/List;)V

    .line 163
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->getBrightnessFadeSpeedIntervals()I

    move-result v5

    .line 164
    .local v5, "interval":I
    const/16 v9, 0x28

    if-ge v1, v9, :cond_6

    .line 166
    const/16 v5, 0xfa

    .line 178
    :goto_4
    const-string v9, "AUTOADJUST"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intervals---interval="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v0}, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->getCount()I

    move-result v9

    mul-int/2addr v9, v5

    int-to-float v9, v9

    const/high16 v10, 0x447a0000

    div-float v3, v9, v10

    .line 180
    .local v3, "finishSeconds":F
    const-string v9, "%.2f"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "finishString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "will finish after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->sendLogInfo(Ljava/lang/String;)V

    .line 182
    iget-object v7, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-virtual {v7, v5}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->start(I)V

    goto/16 :goto_0

    .end local v0    # "adjuest":Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;
    .end local v1    # "current2target_Delta":I
    .end local v2    # "current_bright":Z
    .end local v3    # "finishSeconds":F
    .end local v4    # "finishString":Ljava/lang/String;
    .end local v5    # "interval":I
    .end local v6    # "target_nonbright":Z
    :cond_3
    move v2, v8

    .line 134
    goto/16 :goto_1

    .restart local v2    # "current_bright":Z
    :cond_4
    move v6, v8

    .line 135
    goto/16 :goto_2

    .line 151
    .restart local v6    # "target_nonbright":Z
    :cond_5
    const-string v9, "AUTOADJUST"

    const-string v10, "Quickly adjuest"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lcom/android/server/lightadjust/QuicklyAdjuest;

    invoke-direct {v0}, Lcom/android/server/lightadjust/QuicklyAdjuest;-><init>()V

    .line 153
    .restart local v0    # "adjuest":Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->getBrightnessFadeStepCount()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/lightadjust/BrightnessAdjuestStrategy;->setStepCount(I)V

    .line 154
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Quickly begin--["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->sendLogInfo(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 167
    .restart local v1    # "current2target_Delta":I
    .restart local v5    # "interval":I
    :cond_6
    const/16 v9, 0x50

    if-ge v1, v9, :cond_7

    .line 169
    const/16 v5, 0xb4

    goto/16 :goto_4

    .line 170
    :cond_7
    const/16 v9, 0x96

    if-ge v1, v9, :cond_8

    .line 172
    const/16 v5, 0x96

    goto/16 :goto_4

    .line 175
    :cond_8
    const/16 v5, 0x64

    goto/16 :goto_4
.end method

.method private getBrightnessFadeSpeed()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->getBrightnessFadeSpeed()I

    move-result v0

    return v0
.end method

.method private getBrightnessFadeSpeedIntervals()I
    .locals 6

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->getFadeBrightnessChangesSmoothly()Z

    move-result v3

    if-nez v3, :cond_0

    .line 294
    const/16 v1, 0x64

    .line 295
    .local v1, "intervals":I
    const-string v3, "AUTOADJUST"

    const-string v4, "intervals---no Smoothly--100"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 315
    .end local v1    # "intervals":I
    .local v2, "intervals":I
    :goto_0
    return v2

    .line 299
    .end local v2    # "intervals":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->getBrightnessFadeSpeed()I

    move-result v0

    .line 300
    .local v0, "index":I
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intervals---index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    packed-switch v0, :pswitch_data_0

    .line 312
    const/16 v1, 0x64

    .restart local v1    # "intervals":I
    :goto_1
    move v2, v1

    .line 315
    .end local v1    # "intervals":I
    .restart local v2    # "intervals":I
    goto :goto_0

    .line 303
    .end local v2    # "intervals":I
    :pswitch_0
    const/16 v1, 0x64

    .line 304
    .restart local v1    # "intervals":I
    goto :goto_1

    .line 306
    .end local v1    # "intervals":I
    :pswitch_1
    const/16 v1, 0xc8

    .line 307
    .restart local v1    # "intervals":I
    goto :goto_1

    .line 309
    .end local v1    # "intervals":I
    :pswitch_2
    const/16 v1, 0x1f4

    .line 310
    .restart local v1    # "intervals":I
    goto :goto_1

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getBrightnessFadeStepCount()I
    .locals 2

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->getBrightnessFadeSpeed()I

    move-result v0

    .line 274
    .local v0, "index":I
    packed-switch v0, :pswitch_data_0

    .line 285
    const/16 v1, 0x14

    .line 288
    .local v1, "stepCount":I
    :goto_0
    return v1

    .line 276
    .end local v1    # "stepCount":I
    :pswitch_0
    const/16 v1, 0xa

    .line 277
    .restart local v1    # "stepCount":I
    goto :goto_0

    .line 279
    .end local v1    # "stepCount":I
    :pswitch_1
    const/16 v1, 0x14

    .line 280
    .restart local v1    # "stepCount":I
    goto :goto_0

    .line 282
    .end local v1    # "stepCount":I
    :pswitch_2
    const/16 v1, 0x32

    .line 283
    .restart local v1    # "stepCount":I
    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFadeBrightnessChangesSmoothly()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->getFadeBrightnessChangesSmoothly()Z

    move-result v0

    return v0
.end method

.method private getValueChangePolicy()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->getChangePolicy()I

    move-result v0

    return v0
.end method

.method private isTaskRunning()Z
    .locals 2

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->isRunning()Z

    move-result v0

    .line 372
    :cond_0
    return v0
.end method

.method public static setBrightness(I)V
    .locals 4
    .param p0, "brightness"    # I

    .prologue
    .line 331
    const-string v1, "AUTOADJUST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->final setBacklight brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 337
    .local v0, "power":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0, p0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v0    # "power":Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private taskStart(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 105
    iget v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    if-ne p1, v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->taskStop()V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->getEnviromentalLightLevel()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/server/lightadjust/StateContext;->getState(II)Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    move-result-object v0

    .line 113
    .local v0, "init_state":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    invoke-virtual {v1, v0}, Lcom/android/server/lightadjust/StateContext;->setState(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;)V

    .line 121
    .end local v0    # "init_state":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    iget-object v2, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->getEnviromentalLightLevel()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/lightadjust/StateContext;->preProcess(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/StateContext;->getState()Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->getProcessValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->adjustBrightnessStart(I)V

    goto :goto_0
.end method

.method private taskStop()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "AUTOADJUST"

    const-string v1, "stop ---> stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End--->taskStop!-->current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->sendLogInfo(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->cancelTimeTask()V

    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public TernateAllTimerTasks()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->TerminateAll()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    .line 365
    :cond_0
    return-void
.end method

.method public forceStopAdjust()V
    .locals 2

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->isTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const-string v0, "AUTOADJUST"

    const-string v1, "-->task is Runing, force Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->taskStop()V

    .line 387
    :cond_0
    return-void
.end method

.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    return v0
.end method

.method public reCaculateAndRestart()V
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->isTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->taskStop()V

    .line 378
    iget v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mTargetBrightness:I

    invoke-direct {p0, v0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->taskStart(I)V

    .line 380
    :cond_0
    return-void
.end method

.method public sendLogInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/LightAdjuestCore;->sendLogInfo(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public setBrightness(IZZ)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "isUserSet"    # Z
    .param p3, "isServiceSet"    # Z

    .prologue
    .line 54
    iget-boolean v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->isCurrentBrightnessInit:Z

    if-nez v1, :cond_0

    .line 55
    iput p1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->isCurrentBrightnessInit:Z

    .line 59
    :cond_0
    if-eqz p3, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->taskStop()V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightness right now-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->sendLogInfo(Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->updateCurrentBrightness(Ljava/lang/Integer;)V

    .line 65
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    iget-object v2, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->getEnviromentalLightLevel()I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/server/lightadjust/StateContext;->getState(II)Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/lightadjust/StateContext;->setState(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;)V

    .line 66
    invoke-static {p1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->setBrightness(I)V

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    if-eqz p2, :cond_3

    .line 71
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->taskStop()V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightness right now-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->sendLogInfo(Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->updateCurrentBrightness(Ljava/lang/Integer;)V

    .line 76
    iget-object v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mStateContext:Lcom/android/server/lightadjust/StateContext;

    iget-object v2, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->getEnviromentalLightLevel()I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/server/lightadjust/StateContext;->getState(II)Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/lightadjust/StateContext;->setState(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;)V

    .line 77
    invoke-static {p1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->setBrightness(I)V

    goto :goto_0

    .line 83
    :cond_3
    invoke-direct {p0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->getValueChangePolicy()I

    move-result v0

    .line 84
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->taskStart(I)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    if-le p1, v1, :cond_1

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->taskStart(I)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget v1, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    if-ge p1, v1, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->taskStart(I)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stateChangeCallback(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->adjustBrightnessStart(I)V

    .line 125
    return-void
.end method

.method public updateCurrentBrightness(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 356
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/lightadjust/ScreenBrightnessManager;->mCurrentBrightness:I

    .line 358
    return-void
.end method
