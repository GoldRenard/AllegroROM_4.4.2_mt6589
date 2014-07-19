.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;
.super Ljava/lang/Object;
.source "ProgressMocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$BackupCostBaseline;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$RestoreCostBaseline;
    }
.end annotation


# static fields
.field private static final MAX_PROGRESS_UPDATE_INTERNAL:I = 0x1770

.field private static final MIN_PROGRESS_UPDATE_INTERNAL:I = 0xc8

.field private static final STEP_PROGRESS_UPDATE_INTERNAL_DECREASE:I = 0x190

.field private static final STEP_PROGRESS_UPDATE_INTERNAL_INCREASE:I = 0x258


# instance fields
.field private contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

.field private contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

.field private context:Landroid/content/Context;

.field private currentMockProgress:I

.field private currentProgressUpdateInternal:I

.field private currentTaskProgress:I

.field private estimateProgressUpdateInternal:I

.field private mockProgressListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;

.field private portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

.field private progressUpdate:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mockProgressListener"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentProgressUpdateInternal:I

    .line 42
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->context:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->newRawContactDao(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    .line 44
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->mockProgressListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;

    .line 45
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->progressUpdate:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->repairEstimateProgress()V

    return-void
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentProgressUpdateInternal:I

    return v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;)F
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->computeSyncCost()F

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentMockProgress:I

    return v0
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->estimateProgressUpdateInternal:I

    return-void
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->estimateProgressUpdateInternal:I

    return v0
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentProgressUpdateInternal:I

    return-void
.end method

.method private computeBackupCost()F
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->getBackupContact()I

    move-result v0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->getBackupPortrait()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$BackupCostBaseline;->computeBackupCost(II)F

    move-result v0

    return v0
.end method

.method private computeRestoreCost()F
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->getRestoreContact()I

    move-result v0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->getRestorePortrait()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$RestoreCostBaseline;->computeBackupCost(II)F

    move-result v0

    return v0
.end method

.method private computeSyncCost()F
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->computeBackupCost()F

    move-result v0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->computeRestoreCost()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private getBackupContact()I
    .locals 5

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "backupContacts":I
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getSyncType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 99
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber()I

    move-result v0

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->context:Landroid/content/Context;

    .line 102
    const-string v3, "CONTACT_SYNC_RULE"

    .line 103
    const/4 v4, 0x0

    .line 101
    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 104
    .local v1, "syncRule":I
    packed-switch v1, :pswitch_data_0

    .line 114
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCAdd()Ljava/util/List;

    move-result-object v2

    .line 115
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDiff()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 114
    add-int/2addr v2, v3

    .line 117
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDel()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 114
    add-int v0, v2, v3

    goto :goto_0

    .line 106
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCAdd()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDiff()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 107
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDel()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 106
    add-int/2addr v2, v3

    .line 107
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSAdd()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 106
    add-int/2addr v2, v3

    .line 108
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDiff()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 106
    add-int/2addr v2, v3

    .line 108
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDel()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 106
    add-int v0, v2, v3

    .line 109
    goto :goto_0

    .line 111
    :pswitch_1
    const/4 v0, 0x0

    .line 112
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBackupPortrait()I
    .locals 5

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "backupPortraits":I
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->context:Landroid/content/Context;

    .line 133
    const-string v3, "CONTACT_SYNC_RULE"

    .line 134
    const/4 v4, 0x0

    .line 132
    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, "syncRule":I
    packed-switch v1, :pswitch_data_0

    .line 146
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitCDiff()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 147
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitCAdd()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 146
    add-int v0, v2, v3

    .line 151
    .end local v1    # "syncRule":I
    :cond_0
    :goto_0
    return v0

    .line 137
    .restart local v1    # "syncRule":I
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitCDiff()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 138
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitCAdd()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 137
    add-int/2addr v2, v3

    .line 139
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDiff()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 137
    add-int/2addr v2, v3

    .line 140
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDel()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 137
    add-int v0, v2, v3

    .line 141
    goto :goto_0

    .line 143
    :pswitch_1
    const/4 v0, 0x0

    .line 144
    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRestoreContact()I
    .locals 5

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "backupContacts":I
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->context:Landroid/content/Context;

    .line 162
    const-string v3, "CONTACT_SYNC_RULE"

    .line 163
    const/4 v4, 0x0

    .line 161
    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 164
    .local v1, "syncRule":I
    packed-switch v1, :pswitch_data_0

    .line 174
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDiff()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 175
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDel()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 174
    add-int/2addr v2, v3

    .line 175
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSAdd()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 174
    add-int v0, v2, v3

    .line 179
    .end local v1    # "syncRule":I
    :cond_0
    :goto_0
    return v0

    .line 166
    .restart local v1    # "syncRule":I
    :pswitch_0
    const/4 v0, 0x0

    .line 167
    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDiff()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDel()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 170
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSAdd()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 169
    add-int/2addr v2, v3

    .line 170
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDiff()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 169
    add-int/2addr v2, v3

    .line 171
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDel()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 169
    add-int/2addr v2, v3

    .line 171
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCAdd()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 169
    add-int v0, v2, v3

    .line 172
    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRestorePortrait()I
    .locals 5

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "backupPortraits":I
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->context:Landroid/content/Context;

    .line 186
    const-string v3, "CONTACT_SYNC_RULE"

    .line 187
    const/4 v4, 0x0

    .line 185
    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 188
    .local v1, "syncRule":I
    packed-switch v1, :pswitch_data_0

    .line 198
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDiff()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 199
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSAdd()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 198
    add-int v0, v2, v3

    .line 203
    .end local v1    # "syncRule":I
    :cond_0
    :goto_0
    return v0

    .line 190
    .restart local v1    # "syncRule":I
    :pswitch_0
    const/4 v0, 0x0

    .line 191
    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitCDiff()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 194
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDiff()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 193
    add-int/2addr v2, v3

    .line 195
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSAdd()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 193
    add-int v0, v2, v3

    .line 196
    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private repairEstimateProgress()V
    .locals 6

    .prologue
    const/16 v3, 0x1770

    const/16 v2, 0xc8

    .line 213
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentMockProgress:I

    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentTaskProgress:I

    sub-int v0, v4, v5

    .line 215
    .local v0, "gap":I
    const/16 v4, 0xa

    if-le v0, v4, :cond_2

    .line 216
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentProgressUpdateInternal:I

    add-int/lit16 v1, v4, 0x258

    .line 224
    .local v1, "tmpInternal":I
    :goto_0
    if-le v1, v3, :cond_0

    move v1, v3

    .line 225
    :cond_0
    if-ge v1, v2, :cond_1

    move v1, v2

    .line 228
    :cond_1
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentProgressUpdateInternal:I

    .line 229
    return-void

    .line 217
    .end local v1    # "tmpInternal":I
    :cond_2
    const/16 v4, -0xa

    if-ge v0, v4, :cond_3

    .line 218
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentProgressUpdateInternal:I

    add-int/lit16 v1, v4, -0x190

    .line 219
    .restart local v1    # "tmpInternal":I
    goto :goto_0

    .line 221
    .end local v1    # "tmpInternal":I
    :cond_3
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentProgressUpdateInternal:I

    .restart local v1    # "tmpInternal":I
    goto :goto_0
.end method


# virtual methods
.method public endProgress()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->progressUpdate:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->stopUpdate()V

    .line 55
    return-void
.end method

.method public estimateProgress()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    return-void
.end method

.method public getContactChecksum()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    return-object v0
.end method

.method public getPortraitChecksum()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    return-object v0
.end method

.method public notifyProgress(I)V
    .locals 3
    .param p1, "curProgress"    # I

    .prologue
    .line 252
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentMockProgress:I

    .line 253
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->mockProgressListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->mockProgressListener:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentMockProgress:I

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;->onMockProgress(II)V

    .line 256
    :cond_0
    return-void
.end method

.method public onTaskUpdateProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 248
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentTaskProgress:I

    .line 249
    return-void
.end method

.method public pauseProgress()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->progressUpdate:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->pauseUpdate()V

    .line 59
    return-void
.end method

.method public resumeProgress()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->progressUpdate:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->resumeUpdate()V

    .line 63
    return-void
.end method

.method public setContactChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V
    .locals 0
    .param p1, "contactChecksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->contactChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 237
    return-void
.end method

.method public setPortraitChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V
    .locals 0
    .param p1, "portraitChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->portraitChecksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    .line 245
    return-void
.end method

.method public startProgress()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->progressUpdate:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method
