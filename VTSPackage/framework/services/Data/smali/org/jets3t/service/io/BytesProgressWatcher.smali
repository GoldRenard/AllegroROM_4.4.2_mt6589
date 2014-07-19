.class public Lorg/jets3t/service/io/BytesProgressWatcher;
.super Ljava/lang/Object;
.source "BytesProgressWatcher.java"


# static fields
.field public static final SECONDS_OF_HISTORY:I = 0x5


# instance fields
.field private bytesToTransfer:J

.field private earliestHistorySecond:J

.field private endTimeCurrentTransferMS:J

.field private final historyOfBytesBySecond:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isStarted:Z

.field private startTimeAllTransfersMS:J

.field private startTimeCurrentTransferMS:J

.field private synchronizeObject:Ljava/lang/Object;

.field private totalBytesInAllTransfers:J

.field private totalBytesInCurrentTransfer:J


# direct methods
.method public constructor <init>(J)V
    .locals 5
    .param p1, "bytesToTransfer"    # J

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, -0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->isStarted:Z

    .line 41
    iput-wide v3, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->bytesToTransfer:J

    .line 43
    iput-wide v1, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->startTimeAllTransfersMS:J

    .line 44
    iput-wide v3, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInAllTransfers:J

    .line 46
    iput-wide v1, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->startTimeCurrentTransferMS:J

    .line 47
    iput-wide v3, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInCurrentTransfer:J

    .line 48
    iput-wide v1, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->endTimeCurrentTransferMS:J

    .line 50
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->historyOfBytesBySecond:Ljava/util/Map;

    .line 51
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->earliestHistorySecond:J

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->synchronizeObject:Ljava/lang/Object;

    .line 61
    iput-wide p1, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->bytesToTransfer:J

    .line 62
    return-void
.end method

.method public static calculateOverallBytesPerSecond([Lorg/jets3t/service/io/BytesProgressWatcher;)D
    .locals 13
    .param p0, "progressWatchers"    # [Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    .line 346
    const-wide v7, 0x7fffffffffffffffL

    .line 348
    .local v7, "initialStartTime":J
    const-wide/16 v2, 0x0

    .line 349
    .local v2, "bytesTotal":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v9, p0

    if-ge v6, v9, :cond_2

    .line 351
    aget-object v9, p0, v6

    invoke-virtual {v9}, Lorg/jets3t/service/io/BytesProgressWatcher;->isStarted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 349
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 356
    :cond_1
    aget-object v9, p0, v6

    invoke-virtual {v9}, Lorg/jets3t/service/io/BytesProgressWatcher;->getTotalBytesInAllTransfers()J

    move-result-wide v9

    add-long/2addr v2, v9

    .line 359
    aget-object v9, p0, v6

    invoke-virtual {v9}, Lorg/jets3t/service/io/BytesProgressWatcher;->getHistoricStartTimeMS()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-gez v9, :cond_0

    .line 360
    aget-object v9, p0, v6

    invoke-virtual {v9}, Lorg/jets3t/service/io/BytesProgressWatcher;->getHistoricStartTimeMS()J

    move-result-wide v7

    goto :goto_1

    .line 365
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const-wide/16 v11, 0x3e8

    div-long v4, v9, v11

    .line 368
    .local v4, "elapsedTimeSecs":J
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-nez v9, :cond_3

    long-to-double v0, v2

    .line 372
    .local v0, "bytesPerSecondOverall":D
    :goto_2
    return-wide v0

    .line 368
    .end local v0    # "bytesPerSecondOverall":D
    :cond_3
    long-to-double v9, v2

    long-to-double v11, v4

    div-double v0, v9, v11

    goto :goto_2
.end method

.method public static calculateRecentByteRatePerSecond([Lorg/jets3t/service/io/BytesProgressWatcher;)J
    .locals 5
    .param p0, "progressWatchers"    # [Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    .line 383
    const-wide/16 v1, 0x0

    .line 384
    .local v1, "sumOfRates":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 385
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lorg/jets3t/service/io/BytesProgressWatcher;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lorg/jets3t/service/io/BytesProgressWatcher;->getRecentByteRatePerSecond()D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 384
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    return-wide v3
.end method

.method public static calculateRemainingTime([Lorg/jets3t/service/io/BytesProgressWatcher;)J
    .locals 10
    .param p0, "progressWatchers"    # [Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    .line 324
    invoke-static {p0}, Lorg/jets3t/service/io/BytesProgressWatcher;->sumBytesToTransfer([Lorg/jets3t/service/io/BytesProgressWatcher;)J

    move-result-wide v6

    invoke-static {p0}, Lorg/jets3t/service/io/BytesProgressWatcher;->sumBytesTransferred([Lorg/jets3t/service/io/BytesProgressWatcher;)J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 327
    .local v2, "bytesRemaining":J
    invoke-static {p0}, Lorg/jets3t/service/io/BytesProgressWatcher;->calculateOverallBytesPerSecond([Lorg/jets3t/service/io/BytesProgressWatcher;)D

    move-result-wide v0

    .line 329
    .local v0, "bytesPerSecond":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f50624dd2f1a9fcL

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 331
    const-wide/16 v6, 0x0

    .line 336
    :goto_0
    return-wide v6

    .line 334
    :cond_0
    long-to-double v6, v2

    div-double v4, v6, v0

    .line 336
    .local v4, "remainingSecs":D
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    goto :goto_0
.end method

.method public static sumBytesToTransfer([Lorg/jets3t/service/io/BytesProgressWatcher;)J
    .locals 5
    .param p0, "progressWatchers"    # [Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    .line 295
    const-wide/16 v1, 0x0

    .line 296
    .local v1, "sumOfBytes":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 297
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lorg/jets3t/service/io/BytesProgressWatcher;->getBytesToTransfer()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    return-wide v1
.end method

.method public static sumBytesTransferred([Lorg/jets3t/service/io/BytesProgressWatcher;)J
    .locals 5
    .param p0, "progressWatchers"    # [Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    .line 309
    const-wide/16 v1, 0x0

    .line 310
    .local v1, "sumOfBytes":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 311
    aget-object v3, p0, v0

    invoke-virtual {v3}, Lorg/jets3t/service/io/BytesProgressWatcher;->getBytesTransferred()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    return-wide v1
.end method


# virtual methods
.method protected clearHistory()V
    .locals 11

    .prologue
    .line 159
    iget-object v6, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->synchronizeObject:Ljava/lang/Object;

    monitor-enter v6

    .line 161
    :try_start_0
    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-direct {v1, v7, v8}, Ljava/lang/Long;-><init>(J)V

    .line 162
    .local v1, "currentSecond":Ljava/lang/Long;
    iget-wide v3, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->earliestHistorySecond:J

    .local v3, "sec":J
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v3, v7

    if-gtz v5, :cond_0

    .line 163
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 164
    .local v2, "pSec":Ljava/lang/Long;
    iget-object v5, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->historyOfBytesBySecond:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 165
    .local v0, "bytes":Ljava/lang/Long;
    invoke-virtual {p0, v2, v0}, Lorg/jets3t/service/io/BytesProgressWatcher;->removedFromHistory(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 162
    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    goto :goto_0

    .line 167
    .end local v0    # "bytes":Ljava/lang/Long;
    .end local v2    # "pSec":Ljava/lang/Long;
    :cond_0
    monitor-exit v6

    .line 168
    return-void

    .line 167
    .end local v1    # "currentSecond":Ljava/lang/Long;
    .end local v3    # "sec":J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getBytesRemaining()J
    .locals 4

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->bytesToTransfer:J

    iget-wide v2, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInCurrentTransfer:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getBytesToTransfer()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->bytesToTransfer:J

    return-wide v0
.end method

.method public getBytesTransferred()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInCurrentTransfer:J

    return-wide v0
.end method

.method protected getElapsedTimeMS()J
    .locals 4

    .prologue
    .line 250
    iget-boolean v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->isStarted:Z

    if-nez v0, :cond_0

    .line 251
    const-wide/16 v0, 0x0

    .line 257
    :goto_0
    return-wide v0

    .line 253
    :cond_0
    iget-wide v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->endTimeCurrentTransferMS:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 255
    iget-wide v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->endTimeCurrentTransferMS:J

    iget-wide v2, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->startTimeCurrentTransferMS:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 257
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->startTimeCurrentTransferMS:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method protected getHistoricStartTimeMS()J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->startTimeAllTransfersMS:J

    return-wide v0
.end method

.method public getRecentByteRatePerSecond()D
    .locals 19

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->isStarted:Z

    if-nez v15, :cond_0

    .line 208
    const-wide/16 v15, 0x0

    .line 233
    :goto_0
    return-wide v15

    .line 211
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v3, v15, v17

    .line 212
    .local v3, "currentSecond":J
    const-wide/16 v15, 0x1

    const-wide/16 v17, 0x5

    sub-long v17, v3, v17

    add-long v11, v15, v17

    .line 213
    .local v11, "startSecond":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->endTimeCurrentTransferMS:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->endTimeCurrentTransferMS:J

    const-wide/16 v17, 0x3e8

    div-long v5, v15, v17

    .line 217
    .local v5, "endSecond":J
    :goto_1
    const-wide/16 v15, 0x5

    sub-long v15, v3, v15

    cmp-long v15, v15, v5

    if-lez v15, :cond_2

    .line 219
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->historyOfBytesBySecond:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 220
    const-wide/16 v15, 0x0

    goto :goto_0

    .end local v5    # "endSecond":J
    :cond_1
    move-wide v5, v3

    .line 213
    goto :goto_1

    .line 224
    .restart local v5    # "endSecond":J
    :cond_2
    const-wide/16 v13, 0x0

    .line 225
    .local v13, "sumOfBytes":J
    const-wide/16 v7, 0x0

    .line 226
    .local v7, "numberOfSecondsInHistory":J
    move-wide v9, v11

    .local v9, "sec":J
    :goto_2
    cmp-long v15, v9, v5

    if-gtz v15, :cond_4

    .line 227
    const-wide/16 v15, 0x1

    add-long/2addr v7, v15

    .line 228
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->historyOfBytesBySecond:Ljava/util/Map;

    new-instance v16, Ljava/lang/Long;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v10}, Ljava/lang/Long;-><init>(J)V

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 229
    .local v2, "bytesInSecond":Ljava/lang/Long;
    if-eqz v2, :cond_3

    .line 230
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    add-long/2addr v13, v15

    .line 226
    :cond_3
    const-wide/16 v15, 0x1

    add-long/2addr v9, v15

    goto :goto_2

    .line 233
    .end local v2    # "bytesInSecond":Ljava/lang/Long;
    :cond_4
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-nez v15, :cond_5

    const-wide/16 v15, 0x0

    goto :goto_0

    :cond_5
    long-to-double v15, v13

    long-to-double v0, v7

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    goto :goto_0
.end method

.method public getRemainingTime()J
    .locals 9

    .prologue
    .line 192
    const/4 v5, 0x1

    new-array v2, v5, [Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 193
    .local v2, "progressWatchers":[Lorg/jets3t/service/io/BytesProgressWatcher;
    const/4 v5, 0x0

    aput-object p0, v2, v5

    .line 195
    iget-wide v5, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->bytesToTransfer:J

    iget-wide v7, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInCurrentTransfer:J

    sub-long v0, v5, v7

    .line 196
    .local v0, "bytesRemaining":J
    long-to-double v5, v0

    invoke-static {v2}, Lorg/jets3t/service/io/BytesProgressWatcher;->calculateOverallBytesPerSecond([Lorg/jets3t/service/io/BytesProgressWatcher;)D

    move-result-wide v7

    div-double v3, v5, v7

    .line 198
    .local v3, "remainingSecs":D
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    return-wide v5
.end method

.method protected getTotalBytesInAllTransfers()J
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInAllTransfers:J

    return-wide v0
.end method

.method protected isStarted()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->isStarted:Z

    return v0
.end method

.method protected removedFromHistory(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "pSec"    # Ljava/lang/Long;
    .param p2, "pBytes"    # Ljava/lang/Long;

    .prologue
    .line 153
    return-void
.end method

.method public resetWatcher()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 87
    iget-object v1, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->synchronizeObject:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->startTimeCurrentTransferMS:J

    .line 89
    iget-wide v2, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->startTimeAllTransfersMS:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 90
    iget-wide v2, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->startTimeCurrentTransferMS:J

    iput-wide v2, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->startTimeAllTransfersMS:J

    .line 92
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->endTimeCurrentTransferMS:J

    .line 93
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInCurrentTransfer:J

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->isStarted:Z

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBytesToTransfer(J)V
    .locals 2
    .param p1, "bytesToTransfer"    # J

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/jets3t/service/io/BytesProgressWatcher;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Watcher already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-wide p1, p0, Lorg/jets3t/service/io/BytesProgressWatcher;->bytesToTransfer:J

    .line 77
    return-void
.end method

.method public updateBytesTransferred(J)V
    .locals 16
    .param p1, "byteCount"    # J

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->isStarted:Z

    if-nez v10, :cond_0

    .line 107
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/io/BytesProgressWatcher;->resetWatcher()V

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->synchronizeObject:Ljava/lang/Object;

    monitor-enter v11

    .line 112
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInCurrentTransfer:J

    add-long v12, v12, p1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInCurrentTransfer:J

    .line 113
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInAllTransfers:J

    add-long v12, v12, p1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInAllTransfers:J

    .line 116
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->totalBytesInCurrentTransfer:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->bytesToTransfer:J

    cmp-long v10, v12, v14

    if-ltz v10, :cond_1

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->endTimeCurrentTransferMS:J

    .line 121
    :cond_1
    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-direct {v4, v12, v13}, Ljava/lang/Long;-><init>(J)V

    .line 122
    .local v4, "currentSecond":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->historyOfBytesBySecond:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 123
    .local v3, "bytesInSecond":Ljava/lang/Long;
    if-eqz v3, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->historyOfBytesBySecond:Ljava/util/Map;

    new-instance v12, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long v13, v13, p1

    invoke-direct {v12, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v10, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->earliestHistorySecond:J

    cmp-long v10, v12, v14

    if-gez v10, :cond_2

    .line 132
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->earliestHistorySecond:J

    .line 136
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x5

    sub-long v6, v12, v14

    .line 137
    .local v6, "removeHistoryBeforeSecond":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->earliestHistorySecond:J

    .local v8, "sec":J
    :goto_1
    cmp-long v10, v8, v6

    if-gez v10, :cond_4

    .line 138
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v8, v9}, Ljava/lang/Long;-><init>(J)V

    .line 139
    .local v5, "pSec":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->historyOfBytesBySecond:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 140
    .local v2, "bytes":Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lorg/jets3t/service/io/BytesProgressWatcher;->removedFromHistory(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 137
    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    goto :goto_1

    .line 127
    .end local v2    # "bytes":Ljava/lang/Long;
    .end local v5    # "pSec":Ljava/lang/Long;
    .end local v6    # "removeHistoryBeforeSecond":J
    .end local v8    # "sec":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->historyOfBytesBySecond:Ljava/util/Map;

    new-instance v12, Ljava/lang/Long;

    move-wide/from16 v0, p1

    invoke-direct {v12, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v10, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    .end local v3    # "bytesInSecond":Ljava/lang/Long;
    .end local v4    # "currentSecond":Ljava/lang/Long;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 142
    .restart local v3    # "bytesInSecond":Ljava/lang/Long;
    .restart local v4    # "currentSecond":Ljava/lang/Long;
    .restart local v6    # "removeHistoryBeforeSecond":J
    .restart local v8    # "sec":J
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/jets3t/service/io/BytesProgressWatcher;->earliestHistorySecond:J

    .line 143
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    return-void
.end method
