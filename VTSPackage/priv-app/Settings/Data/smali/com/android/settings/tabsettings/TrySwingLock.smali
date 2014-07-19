.class public Lcom/android/settings/tabsettings/TrySwingLock;
.super Landroid/app/Activity;
.source "TrySwingLock.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static mCheckCount:I

.field private static mCheckDuration:J

.field private static mShakeDuration:J

.field private static mStillDuration:J

.field private static mThresholdH:D

.field private static mThresholdL:D

.field private static sampleFreq:F


# instance fields
.field private final EPSILON:F

.field private final TAG:Ljava/lang/String;

.field private final beta:F

.field private inWavePeak:Z

.field private mContext:Landroid/content/Context;

.field private mDeb:I

.field private mDelay:I

.field private mLastMaxVec:F

.field private mLastTime:J

.field private mLastVec:F

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private mRollCount:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeCount:I

.field private mTimestamp0:J

.field private mTimestamp1:J

.field private mTimestampS:J

.field private m_old_flag:I

.field private qnow:[F

.field private status:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const/high16 v0, 0x43480000

    sput v0, Lcom/android/settings/tabsettings/TrySwingLock;->sampleFreq:F

    .line 42
    const-wide/high16 v0, 0x4032000000000000L

    sput-wide v0, Lcom/android/settings/tabsettings/TrySwingLock;->mThresholdH:D

    .line 43
    const-wide/high16 v0, 0x402b000000000000L

    sput-wide v0, Lcom/android/settings/tabsettings/TrySwingLock;->mThresholdL:D

    .line 44
    const-wide/32 v0, 0x5f5e100

    sput-wide v0, Lcom/android/settings/tabsettings/TrySwingLock;->mShakeDuration:J

    .line 45
    const-wide/32 v0, 0xbebc200

    sput-wide v0, Lcom/android/settings/tabsettings/TrySwingLock;->mStillDuration:J

    .line 46
    const-wide/32 v0, 0x2faf0800

    sput-wide v0, Lcom/android/settings/tabsettings/TrySwingLock;->mCheckDuration:J

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/tabsettings/TrySwingLock;->mCheckCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const v1, 0x3dcccccd

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mContext:Landroid/content/Context;

    .line 24
    const-string v0, "SensorTest"

    iput-object v0, p0, Lcom/android/settings/tabsettings/TrySwingLock;->TAG:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->EPSILON:F

    .line 26
    iput v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->beta:F

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/tabsettings/TrySwingLock;->qnow:[F

    .line 29
    iput v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mDeb:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mRollCount:J

    .line 33
    iput v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mDelay:I

    .line 41
    iput v3, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastMaxVec:F

    .line 48
    iput-boolean v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->inWavePeak:Z

    .line 50
    iput v3, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastVec:F

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/tabsettings/TrySwingLock;->m_old_flag:I

    .line 327
    new-instance v0, Lcom/android/settings/tabsettings/TrySwingLock$2;

    invoke-direct {v0, p0}, Lcom/android/settings/tabsettings/TrySwingLock$2;-><init>(Lcom/android/settings/tabsettings/TrySwingLock;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private checkWavePeak(FJ)Z
    .locals 5
    .param p1, "vec"    # F
    .param p2, "time"    # J

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "ret":Z
    iget v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastMaxVec:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 131
    iput p1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastMaxVec:F

    .line 133
    :cond_0
    float-to-double v1, p1

    sget-wide v3, Lcom/android/settings/tabsettings/TrySwingLock;->mThresholdH:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 135
    iget-boolean v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->inWavePeak:Z

    if-nez v1, :cond_2

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->inWavePeak:Z

    .line 138
    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp1:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 140
    iput-wide p2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp1:J

    .line 141
    iget v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mShakeCount:I

    if-nez v1, :cond_1

    .line 143
    iput-wide p2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestampS:J

    .line 146
    :cond_1
    const/4 v0, 0x1

    .line 150
    :cond_2
    return v0
.end method

.method private checkWaveTrough(FJ)Z
    .locals 7
    .param p1, "vec"    # F
    .param p2, "time"    # J

    .prologue
    const-wide/16 v5, 0x0

    .line 156
    float-to-double v1, p1

    sget-wide v3, Lcom/android/settings/tabsettings/TrySwingLock;->mThresholdL:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 159
    iget-wide v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp1:J

    cmp-long v1, v5, v1

    if-eqz v1, :cond_0

    .line 161
    iget-wide v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp0:J

    cmp-long v1, v5, v1

    if-nez v1, :cond_0

    .line 163
    iput-wide p2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp0:J

    .line 166
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->inWavePeak:Z

    .line 168
    const/4 v0, 0x1

    .line 176
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 172
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private getAccVector(Landroid/hardware/SensorEvent;)F
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 274
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 277
    .local v2, "x":F
    const/high16 v4, 0x3f000000

    mul-float v0, v4, v2

    .line 278
    .local v0, "halfx":F
    move v3, v2

    .line 279
    .local v3, "y":F
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 280
    .local v1, "i":I
    const v4, 0x5f3759df

    shr-int/lit8 v5, v1, 0x1

    sub-int v1, v4, v5

    .line 281
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 282
    const/high16 v4, 0x3fc00000

    mul-float v5, v0, v3

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 283
    mul-float/2addr v3, v2

    .line 284
    return v3
.end method

.method private getPeakDuration()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 182
    iget-wide v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp0:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp1:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-wide v0

    .line 185
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp0:J

    iget-wide v4, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp1:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 187
    iget-wide v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp0:J

    iget-wide v4, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp1:J

    sub-long v0, v2, v4

    .line 194
    .local v0, "temp":J
    :goto_1
    const-string v2, "SensorTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "case 1 shake durtion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    .end local v0    # "temp":J
    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    iget-wide v4, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp1:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp0:J

    add-long v0, v2, v4

    .restart local v0    # "temp":J
    goto :goto_1
.end method

.method private getTroughDuration(J)J
    .locals 6
    .param p1, "time"    # J

    .prologue
    .line 202
    iget-wide v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp0:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 204
    iget-wide v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp0:J

    sub-long v0, p1, v2

    .line 211
    .local v0, "temp":J
    :goto_0
    return-wide v0

    .line 208
    .end local v0    # "temp":J
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    iget-wide v4, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp0:J

    sub-long/2addr v2, v4

    add-long v0, v2, p1

    .restart local v0    # "temp":J
    goto :goto_0
.end method

.method private getWaveDuration(J)J
    .locals 6
    .param p1, "time"    # J

    .prologue
    .line 217
    iget-wide v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestampS:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 219
    iget-wide v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestampS:J

    sub-long v0, p1, v2

    .line 226
    .local v0, "temp":J
    :goto_0
    return-wide v0

    .line 223
    .end local v0    # "temp":J
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    iget-wide v4, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestampS:J

    sub-long/2addr v2, v4

    add-long v0, v2, p1

    .restart local v0    # "temp":J
    goto :goto_0
.end method

.method private isPrefShake(J)Z
    .locals 9
    .param p1, "time"    # J

    .prologue
    const-wide/32 v7, 0xf4240

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "ret":Z
    invoke-direct {p0, p1, p2}, Lcom/android/settings/tabsettings/TrySwingLock;->getTroughDuration(J)J

    move-result-wide v1

    .line 233
    .local v1, "temp":J
    sget-wide v3, Lcom/android/settings/tabsettings/TrySwingLock;->mStillDuration:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 235
    iget v3, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mShakeCount:I

    if-eqz v3, :cond_3

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/android/settings/tabsettings/TrySwingLock;->getWaveDuration(J)J

    move-result-wide v1

    .line 238
    const-string v3, "SensorTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case 2 shake "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mShakeCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long v5, v1, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms VS limit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/android/settings/tabsettings/TrySwingLock;->mCheckDuration:J

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget v3, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mShakeCount:I

    sget v4, Lcom/android/settings/tabsettings/TrySwingLock;->mCheckCount:I

    if-ne v3, v4, :cond_2

    sget-wide v3, Lcom/android/settings/tabsettings/TrySwingLock;->mCheckDuration:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 242
    const/4 v0, 0x1

    .line 248
    :goto_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mShakeCount:I

    .line 267
    :cond_0
    :goto_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastMaxVec:F

    .line 270
    :cond_1
    return v0

    .line 246
    :cond_2
    const-string v3, "SensorTest"

    const-string v4, "now rock & roll"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_3
    iget v3, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastMaxVec:F

    const/high16 v4, 0x41600000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 254
    iget v3, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastMaxVec:F

    const/high16 v4, 0x41900000

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 257
    iget-object v3, p0, Lcom/android/settings/tabsettings/TrySwingLock;->status:Landroid/widget/TextView;

    const v4, 0x7f0900eb

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 262
    :cond_4
    iget-object v3, p0, Lcom/android/settings/tabsettings/TrySwingLock;->status:Landroid/widget/TextView;

    const v4, 0x7f0900ec

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private processData(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide/16 v11, 0x0

    .line 288
    const/4 v2, 0x0

    .line 289
    .local v2, "isTrouch":Z
    iget-wide v7, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v9, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastTime:J

    sub-long v0, v7, v9

    .line 290
    .local v0, "dt":J
    iget-wide v7, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v7, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastTime:J

    .line 291
    invoke-direct {p0, p1}, Lcom/android/settings/tabsettings/TrySwingLock;->getAccVector(Landroid/hardware/SensorEvent;)F

    move-result v3

    .line 292
    .local v3, "now":F
    const v7, 0x3dcccccd

    mul-float/2addr v7, v3

    iget v8, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastVec:F

    const v9, 0x3f666666

    mul-float/2addr v8, v9

    add-float v6, v7, v8

    .line 293
    .local v6, "vec":F
    iput v6, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastVec:F

    .line 297
    iget-wide v7, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/tabsettings/TrySwingLock;->checkWavePeak(FJ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 299
    iget-wide v7, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/tabsettings/TrySwingLock;->checkWaveTrough(FJ)Z

    move-result v2

    .line 306
    :goto_0
    if-eqz v2, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/android/settings/tabsettings/TrySwingLock;->getPeakDuration()J

    move-result-wide v4

    .line 310
    .local v4, "temp":J
    sget-wide v7, Lcom/android/settings/tabsettings/TrySwingLock;->mShakeDuration:J

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    .line 312
    iget v7, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mShakeCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mShakeCount:I

    .line 314
    :cond_0
    iput-wide v11, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp1:J

    .line 316
    iget-wide v7, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v7, v8}, Lcom/android/settings/tabsettings/TrySwingLock;->isPrefShake(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 319
    const-string v7, "SensorTest"

    const-string v8, "shake go to sleep... "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v7, p0, Lcom/android/settings/tabsettings/TrySwingLock;->status:Landroid/widget/TextView;

    const v8, 0x7f0900ea

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 325
    .end local v4    # "temp":J
    :cond_1
    return-void

    .line 303
    :cond_2
    iput-wide v11, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mTimestamp0:J

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 351
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f0400dc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 58
    const v1, 0x7f090147

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 60
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mContext:Landroid/content/Context;

    .line 61
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mSensorManager:Landroid/hardware/SensorManager;

    .line 63
    const v1, 0x7f0b02b6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->status:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->status:Landroid/widget/TextView;

    const v2, 0x7f0900e9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    const v1, 0x7f0b02b7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 68
    .local v0, "bttn_exit":Landroid/widget/Button;
    new-instance v1, Lcom/android/settings/tabsettings/TrySwingLock$1;

    invoke-direct {v1, p0}, Lcom/android/settings/tabsettings/TrySwingLock$1;-><init>(Lcom/android/settings/tabsettings/TrySwingLock;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 115
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 118
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 99
    iget-object v0, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 100
    const-string v0, "SensorTest"

    const-string v1, "register stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    iget v0, p0, Lcom/android/settings/tabsettings/TrySwingLock;->m_old_flag:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "swing_lock_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    iget-object v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->qnow:[F

    const/high16 v2, 0x3f800000

    aput v2, v1, v4

    .line 82
    iget-object v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->qnow:[F

    aput v3, v1, v5

    .line 83
    iget-object v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->qnow:[F

    const/4 v2, 0x2

    aput v3, v1, v2

    .line 84
    iget-object v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->qnow:[F

    const/4 v2, 0x3

    aput v3, v1, v2

    .line 85
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mLastTime:J

    .line 86
    iput-boolean v4, p0, Lcom/android/settings/tabsettings/TrySwingLock;->inWavePeak:Z

    .line 88
    iget-object v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/tabsettings/TrySwingLock;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 91
    .local v0, "ret":Z
    const-string v1, "SensorTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register Acc fast ret= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "swing_lock_enabled"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/tabsettings/TrySwingLock;->m_old_flag:I

    .line 94
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "swing_lock_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/settings/tabsettings/TrySwingLock;->processData(Landroid/hardware/SensorEvent;)V

    .line 359
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 111
    return-void
.end method
