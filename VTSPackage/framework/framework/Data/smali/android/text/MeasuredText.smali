.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MeasuredText"

.field private static final localLOGV:Z

.field private static sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 47
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    .prologue
    .line 54
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 55
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 56
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 57
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 58
    .local v1, "mt":Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 59
    monitor-exit v3

    .line 67
    :goto_0
    return-object v1

    .line 62
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 67
    .restart local v1    # "mt":Landroid/text/MeasuredText;
    goto :goto_0

    .line 62
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4
    .param p0, "mt"    # Landroid/text/MeasuredText;

    .prologue
    const/4 v3, 0x0

    .line 71
    iput-object v3, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 72
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 73
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 75
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 76
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 81
    :cond_0
    monitor-exit v2

    .line 83
    .end local v0    # "i":I
    :cond_1
    return-object v3

    .line 74
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 24
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "len"    # I
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 155
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSpan] start"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-eqz p3, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/text/TextPaint;->getFontMetricsInt([CLandroid/graphics/Paint$FontMetricsInt;II)I

    .line 161
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/MeasuredText;->mPos:I

    .line 162
    .local v5, "p":I
    add-int v3, v5, p2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/text/MeasuredText;->mPos:I

    .line 164
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v3, :cond_2

    .line 165
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v9, 0x0

    .line 167
    .local v9, "flags":I
    :goto_0
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSpan_1] getTextRunAdvances start"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v3, p1

    move/from16 v6, p2

    move v7, v5

    move/from16 v8, p2

    move v11, v5

    invoke-virtual/range {v3 .. v11}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v22

    .line 169
    .local v22, "ret":F
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSpan_1] getTextRunAdvances end"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v22    # "ret":F
    :goto_1
    return v22

    .line 165
    .end local v9    # "flags":I
    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    .line 173
    :cond_2
    const/16 v23, 0x0

    .line 175
    .local v23, "totalAdvance":F
    if-gez v5, :cond_3

    .line 176
    const/4 v5, 0x0

    .line 179
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v3, v3

    if-lt v5, v3, :cond_4

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v3, v3

    add-int/lit8 v5, v3, -0x1

    .line 183
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v21, v3, v5

    .line 184
    .local v21, "level":I
    move v12, v5

    .local v12, "q":I
    add-int/lit8 v20, v5, 0x1

    .local v20, "i":I
    add-int v19, v5, p2

    .line 185
    .local v19, "e":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v3, v3, v20

    move/from16 v0, v21

    if-eq v3, v0, :cond_8

    .line 186
    :cond_5
    and-int/lit8 v3, v21, 0x1

    if-nez v3, :cond_6

    const/4 v9, 0x0

    .line 187
    .restart local v9    # "flags":I
    :goto_3
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSpan_2] getTextRunAdvances start"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v13, v20, v12

    sub-int v15, v20, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v17, v0

    move-object/from16 v10, p1

    move v14, v12

    move/from16 v16, v9

    move/from16 v18, v12

    invoke-virtual/range {v10 .. v18}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v3

    add-float v23, v23, v3

    .line 189
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSpan_2] getTextRunAdvances end"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 197
    const-string v3, "MeasuredText"

    const-string v4, "[addStyleRun_NoSapn] end"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v23

    .line 199
    goto :goto_1

    .line 186
    .end local v9    # "flags":I
    :cond_6
    const/4 v9, 0x1

    goto :goto_3

    .line 193
    .restart local v9    # "flags":I
    :cond_7
    move/from16 v12, v20

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v21, v3, v20

    .line 184
    .end local v9    # "flags":I
    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_2
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 14
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "len"    # I
    .param p4, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 205
    iget-object v3, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 206
    .local v3, "workPaint":Landroid/text/TextPaint;
    invoke-virtual {v3, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 208
    const/4 v4, 0x0

    iput v4, v3, Landroid/text/TextPaint;->baselineShift:I

    .line 210
    const-string v4, "MeasuredText"

    const-string v5, "[addStyleRun_Span] start"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v2, 0x0

    .line 212
    .local v2, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v4, v0

    if-ge v9, v4, :cond_1

    .line 213
    aget-object v11, p2, v9

    .line 214
    .local v11, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v4, v11, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_0

    move-object v2, v11

    .line 215
    check-cast v2, Landroid/text/style/ReplacementSpan;

    .line 212
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v11, v3}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 222
    .end local v11    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v2, :cond_3

    .line 223
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v3, v0, v1}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 247
    .local v13, "wid":F
    :goto_2
    if-eqz p4, :cond_2

    .line 248
    iget v4, v3, Landroid/text/TextPaint;->baselineShift:I

    if-gez v4, :cond_7

    .line 249
    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v5, v3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v4, v5

    move-object/from16 v0, p4

    iput v4, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 250
    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v5, v3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v4, v5

    move-object/from16 v0, p4

    iput v4, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 256
    :cond_2
    :goto_3
    const-string v4, "MeasuredText"

    const-string v5, "[addStyleRun_Span] end"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return v13

    .line 226
    .end local v13    # "wid":F
    :cond_3
    iget-object v4, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v5, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v6, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v7, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v6, v7

    add-int v6, v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v4

    int-to-float v13, v4

    .line 228
    .restart local v13    # "wid":F
    iget-object v12, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 230
    .local v12, "w":[F
    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    if-gez v4, :cond_4

    .line 231
    const/4 v4, 0x0

    iput v4, p0, Landroid/text/MeasuredText;->mPos:I

    .line 233
    :cond_4
    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    iget-object v5, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v5, v5

    if-lt v4, v5, :cond_5

    .line 234
    iget-object v4, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/text/MeasuredText;->mPos:I

    .line 237
    :cond_5
    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    aput v13, v12, v4

    .line 239
    array-length v10, v12

    .line 240
    .local v10, "sizes":I
    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v9, v4, 0x1

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v8, v4, p3

    .local v8, "e":I
    :goto_4
    if-ge v9, v8, :cond_6

    if-ge v9, v10, :cond_6

    .line 242
    const/4 v4, 0x0

    aput v4, v12, v9

    .line 240
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 244
    :cond_6
    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v4, v4, p3

    iput v4, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    .line 252
    .end local v8    # "e":I
    .end local v10    # "sizes":I
    .end local v12    # "w":[F
    :cond_7
    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v5, v3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v4, v5

    move-object/from16 v0, p4

    iput v4, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 253
    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v4, v5

    move-object/from16 v0, p4

    iput v4, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method breakText(IZF)I
    .locals 5
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 262
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 263
    .local v1, "w":[F
    if-eqz p2, :cond_3

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 266
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 267
    cmpg-float v2, p3, v3

    if-gez v2, :cond_1

    .line 270
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 268
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 280
    :goto_2
    return v2

    .line 273
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v0, p1, -0x1

    .line 274
    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_4

    .line 275
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 276
    cmpg-float v2, p3, v3

    if-gez v2, :cond_5

    .line 279
    :cond_4
    :goto_4
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 277
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 280
    :cond_6
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method measure(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, "width":F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 287
    .local v1, "w":[F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 288
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 94
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 95
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    .line 97
    sub-int v6, p3, p2

    .line 98
    .local v6, "len":I
    iput v6, p0, Landroid/text/MeasuredText;->mLen:I

    .line 99
    const/4 v10, 0x0

    iput v10, p0, Landroid/text/MeasuredText;->mPos:I

    .line 101
    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v10, v10

    if-ge v10, v6, :cond_1

    .line 102
    :cond_0
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealFloatArraySize(I)I

    move-result v10

    new-array v10, v10, [F

    iput-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 104
    :cond_1
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    array-length v10, v10

    if-ge v10, v6, :cond_3

    .line 105
    :cond_2
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v10

    new-array v10, v10, [C

    iput-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 107
    :cond_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {p1, p2, v0, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 109
    instance-of v10, p1, Landroid/text/Spanned;

    if-eqz v10, :cond_7

    move-object v7, p1

    .line 110
    check-cast v7, Landroid/text/Spanned;

    .line 111
    .local v7, "spanned":Landroid/text/Spanned;
    const-class v10, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p3

    invoke-interface {v7, p2, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ReplacementSpan;

    .line 114
    .local v8, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v8

    if-ge v3, v10, :cond_7

    .line 115
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sub-int v9, v10, p2

    .line 116
    .local v9, "startInPara":I
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v2, v10, p2

    .line 118
    .local v2, "endInPara":I
    if-gez v9, :cond_4

    const/4 v9, 0x0

    .line 119
    :cond_4
    if-le v2, v6, :cond_5

    move v2, v6

    .line 120
    :cond_5
    move v5, v9

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_6

    .line 121
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const v11, 0xfffc

    aput-char v11, v10, v5

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 114
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "endInPara":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v7    # "spanned":Landroid/text/Spanned;
    .end local v8    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v9    # "startInPara":I
    :cond_7
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_8

    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_8

    sget-object v10, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_9

    :cond_8
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 130
    const/4 v10, 0x1

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 131
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    .line 152
    :goto_2
    return-void

    .line 133
    :cond_9
    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v10, v10

    if-ge v10, v6, :cond_b

    .line 134
    :cond_a
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v10

    new-array v10, v10, [B

    iput-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 137
    :cond_b
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_c

    .line 138
    const/4 v1, 0x1

    .line 149
    .local v1, "bidiRequest":I
    :goto_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v6, v12}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v10

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 150
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_2

    .line 139
    .end local v1    # "bidiRequest":I
    :cond_c
    sget-object v10, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_d

    .line 140
    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 141
    .end local v1    # "bidiRequest":I
    :cond_d
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_e

    .line 142
    const/4 v1, 0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 143
    .end local v1    # "bidiRequest":I
    :cond_e
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_f

    .line 144
    const/4 v1, -0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 146
    .end local v1    # "bidiRequest":I
    :cond_f
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11, v6}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v4

    .line 147
    .local v4, "isRtl":Z
    if-eqz v4, :cond_10

    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    :goto_4
    goto :goto_3

    .end local v1    # "bidiRequest":I
    :cond_10
    const/4 v1, 0x1

    goto :goto_4
.end method

.method setPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 87
    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    .line 88
    return-void
.end method
