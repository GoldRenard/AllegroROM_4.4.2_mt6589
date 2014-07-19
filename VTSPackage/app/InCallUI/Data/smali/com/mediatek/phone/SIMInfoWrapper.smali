.class public Lcom/mediatek/phone/SIMInfoWrapper;
.super Ljava/lang/Object;
.source "SIMInfoWrapper.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SIMInfoWrapper"

.field private static mAllSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static mInsertedSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsNullResult:Z

.field private static sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;


# instance fields
.field private mAllSimInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInsertedSimInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBrRegistered:Z

.field private mIsNeedToInitSimInfo:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimIdSlotIdPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSimInfoUpdateRegistrantList:Landroid/os/RegistrantList;

.field private mSlotIdSimIdPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 24
    sput-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 446
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/phone/SIMInfoWrapper;->sIsNullResult:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    .line 31
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimInfoUpdateRegistrantList:Landroid/os/RegistrantList;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mIsBrRegistered:Z

    .line 425
    new-instance v0, Lcom/mediatek/phone/SIMInfoWrapper$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/SIMInfoWrapper$1;-><init>(Lcom/mediatek/phone/SIMInfoWrapper;)V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    .line 104
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getCheckedSimId(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I
    .locals 4
    .param p1, "item"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 108
    iget-wide v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v0, v0

    .line 114
    :goto_0
    return v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCheckedSimId]Wrong simId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-wide/16 v0, -0x1

    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 114
    const/4 v0, -0x1

    goto :goto_0

    .line 111
    :cond_1
    iget-wide v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    goto :goto_1
.end method

.method public static declared-synchronized getDefault()Lcom/mediatek/phone/SIMInfoWrapper;
    .locals 3

    .prologue
    .line 126
    const-class v1, Lcom/mediatek/phone/SIMInfoWrapper;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/mediatek/phone/SIMInfoWrapper;->sIsNullResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 145
    :goto_0
    monitor-exit v1

    return-object v0

    .line 129
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-direct {v0}, Lcom/mediatek/phone/SIMInfoWrapper;-><init>()V

    sput-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 132
    :cond_1
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    iget-boolean v0, v0, Lcom/mediatek/phone/SIMInfoWrapper;->mIsNeedToInitSimInfo:Z

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-direct {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->initSimInfo()V

    .line 136
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 138
    const-string v0, "getDefault() initSimInfo failed"

    invoke-static {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mediatek/phone/SIMInfoWrapper;->mIsNeedToInitSimInfo:Z

    .line 145
    :cond_2
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initSimInfo()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 387
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 388
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 390
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-nez v3, :cond_2

    .line 391
    :cond_0
    const-string v3, "[SIMInfoWrapper] mSimInfoList OR mInsertedSimInfoList is null"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 413
    :cond_1
    return-void

    .line 398
    :cond_2
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 399
    .local v1, "item":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-direct {p0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getCheckedSimId(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v2

    .line 400
    .local v2, "simId":I
    if-eq v2, v6, :cond_3

    .line 401
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 406
    .end local v1    # "item":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v2    # "simId":I
    :cond_4
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 407
    .restart local v1    # "item":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-direct {p0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getCheckedSimId(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v2

    .line 408
    .restart local v2    # "simId":I
    if-eq v2, v6, :cond_5

    .line 409
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    iget v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 440
    const-string v0, "SIMInfoWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void
.end method

.method public static setNull(Z)V
    .locals 1
    .param p0, "testMode"    # Z

    .prologue
    .line 448
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 449
    sput-boolean p0, Lcom/mediatek/phone/SIMInfoWrapper;->sIsNullResult:Z

    .line 450
    return-void
.end method


# virtual methods
.method public getAllSimCount()I
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllSimInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getInsertedSimColorById(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 267
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 268
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    goto :goto_0
.end method

.method public getInsertedSimCount()I
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInsertedSimDisplayNameById(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 278
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 279
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInsertedSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    return-object v0
.end method

.method public getInsertedSimInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getInsertedSimInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getInsertedSimSlotById(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 289
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 290
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    goto :goto_0
.end method

.method public getSimBackgroundDarkResByColorId(I)I
    .locals 2
    .param p1, "colorId"    # I

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimBackgroundDarkResByColorId() colorId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 362
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 363
    :cond_0
    const/4 p1, 0x0

    .line 365
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSimBackgroundLightResByColorId(I)I
    .locals 2
    .param p1, "colorId"    # I

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimBackgroundLightResByColorId() colorId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 370
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 371
    :cond_0
    const/4 p1, 0x0

    .line 373
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSimBackgroundResByColorId(I)I
    .locals 2
    .param p1, "colorId"    # I

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimBackgroundResByColorId() colorId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 354
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 355
    :cond_0
    const/4 p1, 0x0

    .line 357
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSimColorById(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 224
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 225
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    goto :goto_0
.end method

.method public getSimDisplayNameById(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 236
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSimDisplayNameBySlotId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, "simDisplayName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimIdBySlotId(I)I

    move-result v0

    .line 340
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    return-object v1
.end method

.method public getSimIdBySlotId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 327
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 328
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    return-object v0
.end method

.method public getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    sget-object v2, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 208
    sget-object v2, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 209
    .restart local v1    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 214
    .end local v0    # "i":I
    :goto_1
    return-object v2

    .line 207
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSimInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getSimInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSimSlotById(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 246
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 247
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    goto :goto_0
.end method

.method public getSlotIdBySimId(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 321
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 322
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    .line 378
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 379
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mIsNeedToInitSimInfo:Z

    iput-boolean v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mIsBrRegistered:Z

    .line 384
    return-void
.end method

.method public registerForSimInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimInfoUpdateRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 346
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mIsBrRegistered:Z

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mIsBrRegistered:Z

    .line 423
    :cond_0
    return-void
.end method

.method public unregisterForSimInfoUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimInfoUpdateRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 350
    return-void
.end method

.method public updateSimInfoCache()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 41
    const-string v3, "updateSimInfoCache()"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 43
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 44
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 45
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 47
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    .line 48
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    .line 49
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 50
    .local v1, "item":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-direct {p0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getCheckedSimId(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v2

    .line 51
    .local v2, "simId":I
    if-eq v2, v6, :cond_0

    .line 52
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    .end local v1    # "item":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v2    # "simId":I
    :cond_1
    const-string v3, "[updateSimInfo] update mAllSimInfoList"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 67
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v3, :cond_6

    .line 68
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 69
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 71
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    .line 72
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    .line 73
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 74
    .restart local v1    # "item":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-direct {p0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getCheckedSimId(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v2

    .line 75
    .restart local v2    # "simId":I
    if-eq v2, v6, :cond_3

    .line 76
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    iget v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v2    # "simId":I
    :cond_4
    const-string v3, "[updateSimInfo] updated mAllSimInfoList is null"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 91
    :goto_2
    return-void

    .line 81
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v3, "[updateSimInfo] update mInsertedSimInfoList"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 90
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimInfoUpdateRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_2

    .line 85
    :cond_7
    const-string v3, "[updateSimInfo] updated mInsertedSimInfoList is null"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    goto :goto_2
.end method
