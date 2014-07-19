.class public Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;
.super Landroid/view/View;
.source "ChartBandwidthNetworkSeriesView.java"


# static fields
.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "ChartBandwidthNetworkSeriesView"

.field private static final TOTAL_LEN:I = 0x5a


# instance fields
.field private mCurrentBytes:[J

.field private mCurrentLen:I

.field private mEnd:J

.field private mEndTime:J

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mLeftBound:J

.field private mMax:J

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mStart:J

.field private mStats:Landroid/net/NetworkStats;

.field private mTotalUsed:J

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mEndTime:J

    .line 62
    iput-boolean v4, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    .line 76
    sget-object v2, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    const/high16 v2, -0x10000

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 79
    .local v1, "stroke":I
    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->setSeriesColor(I)V

    .line 80
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    .line 83
    const/16 v2, 0x5a

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    .line 84
    iput v4, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    .line 85
    return-void
.end method


# virtual methods
.method public generatePath()V
    .locals 15

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->getMaxBytes()J

    move-result-wide v4

    .line 122
    .local v4, "range":J
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    .line 123
    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 126
    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    invoke-virtual {v8}, Landroid/net/NetworkStats;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    .line 131
    const-wide/16 v6, 0x0

    .line 132
    .local v6, "totalData":J
    const-wide/16 v0, 0x0

    .line 134
    .local v0, "currentData":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    invoke-virtual {v8}, Landroid/net/NetworkStats;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    invoke-virtual {v8, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 137
    const-string v8, "ChartBandwidthNetworkSeriesView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rxBytes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", txBytes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 141
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_2
    const-string v8, "ChartBandwidthNetworkSeriesView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "totalData = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mTotalUsed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    const-wide/16 v0, 0x0

    .line 144
    :goto_2
    iput-wide v6, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    .line 145
    const-string v8, "ChartBandwidthNetworkSeriesView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentData = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    const/16 v9, 0x5a

    if-ge v8, v9, :cond_4

    .line 148
    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    iget v9, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    aput-wide v0, v8, v9

    .line 149
    iget v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    .line 155
    :goto_3
    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    rsub-int/lit8 v10, v10, 0x64

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    invoke-interface {v9, v10, v11}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v9

    iget-object v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    iget-object v11, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    const/4 v12, 0x0

    aget-wide v11, v11, v12

    div-long/2addr v11, v4

    const-wide/16 v13, 0x64

    mul-long/2addr v11, v13

    invoke-interface {v10, v11, v12}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 158
    const/4 v3, 0x0

    :goto_4
    iget v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    if-ge v3, v8, :cond_6

    .line 159
    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    rsub-int/lit8 v10, v10, 0x64

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v3

    int-to-long v10, v10

    invoke-interface {v9, v10, v11}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v9

    iget-object v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    iget-object v11, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    aget-wide v11, v11, v3

    invoke-interface {v10, v11, v12}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 161
    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    iget-object v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    aget-wide v10, v10, v3

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    aget-wide v8, v8, v3

    :goto_5
    iput-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 143
    :cond_3
    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    sub-long v0, v6, v8

    goto/16 :goto_2

    .line 151
    :cond_4
    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    const/4 v11, 0x0

    const/16 v12, 0x59

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    const/16 v9, 0x59

    aput-wide v0, v8, v9

    goto :goto_3

    .line 161
    :cond_5
    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    goto :goto_5

    .line 163
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0
.end method

.method public getMaxBytes()J
    .locals 4

    .prologue
    const-wide/32 v0, 0x100000

    .line 100
    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    :cond_0
    return-wide v0
.end method

.method public getTotalUsedData()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    return-wide v0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .param p1, "horiz"    # Lcom/android/settings/widget/ChartAxis;
    .param p2, "vert"    # Lcom/android/settings/widget/ChartAxis;

    .prologue
    .line 95
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 96
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 97
    return-void
.end method

.method public invalidatePath()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 115
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 170
    iget-boolean v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    if-nez v3, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->generatePath()V

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    .line 175
    .local v0, "primaryLeftPoint":F
    iget-object v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-wide/16 v4, 0x64

    invoke-interface {v3, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    .line 177
    .local v1, "primaryRightPoint":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 178
    .local v2, "save":I
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 179
    iget-object v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 180
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 181
    return-void
.end method

.method public setNetworkStates(Landroid/net/NetworkStats;)V
    .locals 0
    .param p1, "networkStats"    # Landroid/net/NetworkStats;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->generatePath()V

    .line 110
    return-void
.end method

.method public setSeriesColor(I)V
    .locals 2
    .param p1, "stroke"    # I

    .prologue
    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    return-void
.end method
