.class Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field private mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mRssiBase:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 5
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1281
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    iput-object p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    .line 1283
    const/16 v1, -0x69

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    .line 1284
    const/16 v1, 0x3d

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    .line 1285
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    new-array v1, v1, [Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 1286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    .line 1287
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    new-instance v2, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const-wide v3, 0x3fb999999999999aL

    invoke-direct {v2, p1, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;D)V

    aput-object v2, v1, v0

    .line 1286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1288
    :cond_0
    return-void
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1251
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide v0
.end method

.method static synthetic access$4702(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1251
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide p1
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1251
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return v0
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1251
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    return v0
.end method

.method static synthetic access$7500(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1251
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide v0
.end method

.method static synthetic access$7502(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1251
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide p1
.end method

.method static synthetic access$8400(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8502(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1251
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    return-wide p1
.end method

.method static synthetic access$8602(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1251
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    return-wide p1
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 13
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "threshold"    # D

    .prologue
    .line 1416
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p1, v7

    .line 1417
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p2, v7

    .line 1418
    const/4 v2, 0x0

    .line 1419
    .local v2, "emptyCount":I
    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    .line 1421
    .local v0, "d":I
    :goto_0
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v8, "findRssiTarget start"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1423
    move v3, p1

    .local v3, "i":I
    :goto_1
    if-eq v3, p2, :cond_5

    .line 1425
    if-ltz v3, :cond_2

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v7, v7, v3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$8000(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    .line 1426
    const/4 v2, 0x0

    .line 1427
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v6, v7, v3

    .line 1428
    .local v6, "rssi":I
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1429
    .local v1, "df":Ljava/text/DecimalFormat;
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " threshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059000000000000L

    mul-double v9, v9, p3

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7600(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4059000000000000L

    mul-double/2addr v9, v11

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% volume="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$8000(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1434
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v7, v7, v3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7600(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v7

    cmpg-double v7, v7, p3

    if-gez v7, :cond_4

    .line 1437
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1438
    new-instance v1, Ljava/text/DecimalFormat;

    .end local v1    # "df":Ljava/text/DecimalFormat;
    const-string v7, "#.##"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1439
    .restart local v1    # "df":Ljava/text/DecimalFormat;
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scan target found: rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " threshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059000000000000L

    mul-double v9, v9, p3

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7600(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4059000000000000L

    mul-double/2addr v9, v11

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% volume="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$8000(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1444
    :cond_0
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v8, "findRssiTarget end"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1469
    .end local v1    # "df":Ljava/text/DecimalFormat;
    .end local v6    # "rssi":I
    :goto_2
    return v6

    .line 1419
    .end local v0    # "d":I
    .end local v3    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 1447
    .restart local v0    # "d":I
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x3

    if-lt v2, v7, :cond_4

    .line 1449
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v6, v7, v3

    .line 1450
    .restart local v6    # "rssi":I
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->presetLoss(I)D

    move-result-wide v4

    .line 1451
    .local v4, "lossPreset":D
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1452
    .restart local v1    # "df":Ljava/text/DecimalFormat;
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " threshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059000000000000L

    mul-double v9, v9, p3

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059000000000000L

    mul-double/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% volume=preset"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1456
    cmpg-double v7, v4, p3

    if-gez v7, :cond_4

    .line 1457
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1458
    new-instance v1, Ljava/text/DecimalFormat;

    .end local v1    # "df":Ljava/text/DecimalFormat;
    const-string v7, "#.##"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1459
    .restart local v1    # "df":Ljava/text/DecimalFormat;
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scan target found: rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " threshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059000000000000L

    mul-double v9, v9, p3

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059000000000000L

    mul-double/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% volume=preset"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1463
    :cond_3
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v8, "findRssiTarget end"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1423
    .end local v1    # "df":Ljava/text/DecimalFormat;
    .end local v4    # "lossPreset":D
    .end local v6    # "rssi":I
    :cond_4
    add-int/2addr v3, v0

    goto/16 :goto_1

    .line 1467
    :cond_5
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v8, "findRssiTarget end"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1469
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v6, v7, p2

    goto/16 :goto_2
.end method

.method public newLinkDetected()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1384
    iget-wide v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 1385
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous avoidance still in effect, rssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    const/16 v0, -0x69

    .line 1392
    .local v0, "from":I
    const/16 v2, -0x2d

    .line 1393
    .local v2, "to":I
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodLinkThreshold:D
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9100(Landroid/net/wifi/WifiWatchdogStateMachine;)D

    move-result-wide v3

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v3

    iput v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1394
    iput v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9200()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v5

    aget-object v5, v5, v7

    iget v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1396
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New link verifying target set, rssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1399
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-boolean v3, v3, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    if-ne v3, v8, :cond_0

    .line 1401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "newLinkDetected link speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "target  rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1402
    .local v1, "ss":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 1403
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Landroid/net/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public poorLinkDetected(I)Z
    .locals 17
    .param p1, "rssi"    # I

    .prologue
    .line 1335
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Poor link detected, rssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1337
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1338
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    sub-long v4, v8, v14

    .line 1339
    .local v4, "lastGood":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    sub-long v6, v8, v14

    .line 1343
    .local v6, "lastPoor":J
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    if-lez v14, :cond_1

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9000()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v15, v15, -0x1

    aget-object v14, v14, v15

    iget v14, v14, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    int-to-long v14, v14

    cmp-long v14, v6, v14

    if-ltz v14, :cond_1

    .line 1344
    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    goto :goto_0

    .line 1345
    :cond_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9000()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    aget-object v14, v14, v15

    iget v14, v14, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->SAMPLE_COUNT:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1348
    add-int/lit8 v3, p1, 0x3

    .line 1349
    .local v3, "from":I
    add-int/lit8 v13, p1, 0x14

    .line 1350
    .local v13, "to":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodLinkThreshold:D
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9100(Landroid/net/wifi/WifiWatchdogStateMachine;)D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1351
    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9000()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget v15, v15, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1352
    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9000()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    .line 1355
    :cond_2
    const/4 v10, 0x0

    .local v10, "p":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9200()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v11, v14, -0x1

    .line 1356
    .local v11, "pmax":I
    :goto_1
    if-ge v10, v11, :cond_3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9200()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v14

    add-int/lit8 v15, v10, 0x1

    aget-object v14, v14, v15

    iget v14, v14, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    move/from16 v0, p1

    if-lt v0, v14, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1357
    :cond_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9200()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v14

    aget-object v14, v14, v10

    iget v14, v14, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v1, v14

    .line 1360
    .local v1, "avoidMax":J
    const-wide/16 v14, 0x0

    cmp-long v14, v1, v14

    if-gtz v14, :cond_4

    const/4 v14, 0x0

    .line 1376
    :goto_2
    return v14

    .line 1363
    :cond_4
    add-long v14, v8, v1

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1365
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "goodRssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " goodCount="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " lastGood="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " lastPoor="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " avoidMax="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1369
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-boolean v14, v14, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 1370
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "poorLinkDetected link speed="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " target rssi="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1371
    .local v12, "ss":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v12, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    iput-object v15, v14, Landroid/net/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 1372
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v14, v14, Landroid/net/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 1376
    .end local v12    # "ss":Ljava/lang/String;
    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_2
.end method

.method public presetLoss(I)D
    .locals 10
    .param p1, "rssi"    # I

    .prologue
    const/16 v9, 0x5a

    const-wide/high16 v2, 0x3ff0000000000000L

    .line 1316
    const/16 v4, -0x5a

    if-gt p1, v4, :cond_0

    .line 1325
    :goto_0
    return-wide v2

    .line 1317
    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1319
    :cond_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8800()[D

    move-result-object v4

    if-nez v4, :cond_2

    .line 1321
    const/16 v1, 0x5a

    .line 1322
    .local v1, "size":I
    new-array v4, v9, [D

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8802([D)[D

    .line 1323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v9, :cond_2

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8800()[D

    move-result-object v4

    rsub-int/lit8 v5, v0, 0x5a

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8000000000000L

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v2, v5

    aput-wide v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1325
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8800()[D

    move-result-object v2

    neg-int v3, p1

    aget-wide v2, v2, v3

    goto :goto_0
.end method

.method public updateLoss(IDI)V
    .locals 8
    .param p1, "rssi"    # I
    .param p2, "value"    # D
    .param p4, "volume"    # I

    .prologue
    .line 1298
    if-gtz p4, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int v1, p1, v2

    .line 1300
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v1, v2, :cond_0

    .line 1301
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, p3, p4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1302
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1303
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1304
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache updated: loss["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7600(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L

    mul-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$8000(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method
