.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source "ContactSyncTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;


# static fields
.field public static final CONTACT_LOCAL_MERGE:Ljava/lang/String; = "CONTACT_LOCAL_MERGE"

.field public static final CONTACT_RULE_AUTO:I = 0x0

.field public static final CONTACT_RULE_CLOUD:I = 0x2

.field public static final CONTACT_RULE_LOCAL:I = 0x1

.field public static final ONGOING_BEGIN_SYNC:I = 0x2

.field public static final ONGOING_C_SYNC:I = 0xa

.field public static final ONGOING_C_SYNC_CHECKSUM:I = 0x3

.field public static final ONGOING_GROUP_SYNC:I = 0xb

.field public static final ONGOING_G_SYNC_CHECK_LOCAL:I = 0x4

.field public static final ONGOING_G_SYNC_CHECK_SERVER:I = 0x5

.field public static final ONGOING_P_SYNC:I = 0xc

.field public static final ONGOING_P_SYNC_CHECK_LOCAL:I = 0x6

.field public static final ONGOING_P_SYNC_CHECK_SERVER:I = 0x7

.field public static final ONGOING_SYNC_ENCRPYT:I = 0x8

.field public static final ONGOING_SYNC_GZIP:I = 0x9

.field public static final PROBLEM_SYNC_CONTACT_PHOTO:Ljava/lang/String; = "problemSyncContactPhoto"

.field public static final PROBLEM_SYNC_CONTACT_SAVE_STATUS_BEGIN:Ljava/lang/String; = "problemSyncContactSaveStatusBegin"

.field public static final PROBLEM_SYNC_CONTACT_SAVE_STATUS_END:Ljava/lang/String; = "problemSyncContactSaveStatusEnd"

.field public static final PROBLEM_SYNC_RULE:Ljava/lang/String; = "problemSyncRule"

.field public static final PROBLEM_SYNC_RULE_CLOUD_EMPTY:Ljava/lang/String; = "problemSyncEuleCloudEmpty"

.field public static final PROBLEM_SYNC_RULE_LOCAL_EMPTY:Ljava/lang/String; = "problemSyncEuleLocalEmpty"


# instance fields
.field private bNeedToBackuped:Z

.field private checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

.field private cloudContactCount:I

.field private contactBundle:Landroid/os/Bundle;

.field private contactChecksumBundle:Landroid/os/Bundle;

.field private contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

.field private contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

.field contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

.field private cost:J

.field private doingNetWork:Z

.field private groupBundle:Landroid/os/Bundle;

.field private groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

.field private groupCid2TitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;

.field groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

.field private groupTitle2CidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private localContactCount:I

.field private numberBundle:Landroid/os/Bundle;

.field private photoBundle:Landroid/os/Bundle;

.field private photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

.field photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

.field private portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

.field private progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

.field private start:J

.field private thinkTime:J

.field virtualNetWork:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupCid2TitleMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupTitle2CidMap:Ljava/util/Map;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->bNeedToBackuped:Z

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doingNetWork:Z

    .line 267
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$1;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->virtualNetWork:Ljava/lang/Runnable;

    .line 1041
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    .line 116
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->newRawContactDao(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    .line 117
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;

    .line 118
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    .line 119
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doingNetWork:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupCid2TitleMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupTitle2CidMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)V
    .locals 0

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->saveStatus()V

    return-void
.end method

.method private addOther2Bundle(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "syncBundle"    # Landroid/os/Bundle;
    .param p2, "otherBundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v9, 0x0

    .line 1196
    const-string v8, "real_flow"

    invoke-virtual {p1, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1197
    .local v2, "beginRealFlow":J
    const-string v8, "gzip_flow"

    invoke-virtual {p1, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1198
    .local v0, "beginGzipFlow":J
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1199
    const-string v8, "real_flow"

    invoke-virtual {p1, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1200
    .local v6, "endRealFlow":J
    const-string v8, "gzip_flow"

    invoke-virtual {p1, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1201
    .local v4, "endGzipFlow":J
    add-long/2addr v6, v2

    .line 1202
    add-long/2addr v4, v0

    .line 1203
    const-string v8, "real_flow"

    invoke-virtual {p1, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1204
    const-string v8, "gzip_flow"

    invoke-virtual {p1, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1205
    return-void
.end method

.method private addPortraitSyncCache(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 4
    .param p1, "clientAdler"    # Ljava/lang/String;
    .param p2, "serverAdler"    # Ljava/lang/String;
    .param p3, "cid"    # I
    .param p4, "sid"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;->getCid2LenMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;->getCid2ServerLenMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;->getCid2fieldIdMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->cid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;->getLen2CidsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1090
    .local v0, "cids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 1091
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "cids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1093
    .restart local v0    # "cids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;->getLen2CidsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    return-void
.end method

.method private asyncSaveStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 856
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v2, "problemSyncContactSaveStatusBegin"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v2, "CONTACT_SYNC_TASK_TYPE"

    invoke-static {v1, v2, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 860
    .local v0, "taskType":I
    if-eq v0, v4, :cond_1

    .line 861
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->saveStatusInBackground()V

    .line 865
    :goto_0
    return-void

    .line 863
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->saveStatus()V

    goto :goto_0
.end method

.method private buildGroupCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    .locals 4

    .prologue
    .line 701
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;-><init>()V

    .line 702
    .local v0, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->checkInitContactGroupReq()V

    .line 703
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->readLastServerVersion(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->setVersion(Ljava/lang/Long;)V

    .line 705
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->findAllContactGroupReq()Ljava/util/Map;

    move-result-object v1

    .line 706
    .local v1, "groupSid2TitlesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addGroupByAllGroupsMap(Ljava/util/Map;)V

    .line 707
    return-object v0
.end method

.method private buildPortraitCheckSum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;Ljava/util/Map;)V
    .locals 14
    .param p1, "checksumRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;
    .param p2, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1044
    .local p3, "rawContactMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    iget-object v12, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v6, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1046
    .local v5, "sid":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    .line 1047
    .local v11, "rawcontact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    .line 1048
    .local v7, "b":[B
    if-eqz v7, :cond_0

    array-length v1, v7

    if-lez v1, :cond_0

    if-eqz v11, :cond_0

    .line 1049
    move-object/from16 v0, p2

    iget v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    .line 1050
    .local v4, "cid":I
    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->computeAdler32([B)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, "clientAdler":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1052
    .local v3, "serverAdler":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v12, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v6, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactPortrait(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;

    move-result-object v9

    .line 1053
    .local v9, "portrait":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    if-eqz v9, :cond_1

    iget-object v1, v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;->clientAdler:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1054
    iget-object v3, v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;->serverAdler:Ljava/lang/String;

    .line 1068
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1069
    move-object/from16 v0, p2

    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->addClientPortrait(Ljava/lang/Integer;Ljava/lang/String;)V

    :goto_1
    move-object v1, p0

    move-object/from16 v6, p2

    .line 1074
    invoke-direct/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->addPortraitSyncCache(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V

    .line 1078
    .end local v2    # "clientAdler":Ljava/lang/String;
    .end local v3    # "serverAdler":Ljava/lang/String;
    .end local v4    # "cid":I
    .end local v9    # "portrait":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    :cond_0
    const/4 v7, 0x0

    .line 1079
    const/4 v1, 0x0

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    .line 1080
    return-void

    .line 1056
    .restart local v2    # "clientAdler":Ljava/lang/String;
    .restart local v3    # "serverAdler":Ljava/lang/String;
    .restart local v4    # "cid":I
    .restart local v9    # "portrait":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    :cond_1
    const-string v1, "DEBUG_TAG"

    const-string v6, "invoke ContactPhotoProxy.getContactPhotoLength"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget v6, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->contactId:I

    int-to-long v12, v6

    invoke-static {v1, v12, v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->openContactPhotoInputStream(Landroid/content/Context;J)Ljava/io/InputStream;

    move-result-object v10

    .line 1058
    .local v10, "portraitInputStream":Ljava/io/InputStream;
    if-eqz v10, :cond_2

    .line 1059
    invoke-static {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->computeAdler32(Ljava/io/InputStream;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1064
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;->build(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;

    move-result-object v8

    .line 1065
    .local v8, "cportrait":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v8, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->saveContactPortrait(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    .end local v8    # "cportrait":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    :cond_2
    move-object v3, v2

    goto :goto_2

    .line 1071
    .end local v10    # "portraitInputStream":Ljava/io/InputStream;
    :cond_3
    invoke-virtual {p1, v5, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->addPortrait(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private buildPortraitCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;-><init>()V

    .line 981
    .local v5, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;
    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->checkInitPortraitReq()V

    .line 982
    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->checkInitContactGroupReq()V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->readLastServerVersion(Landroid/content/Context;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->setVersion(Ljava/lang/Long;)V

    .line 986
    const-string v20, "mimetype = ? and data15 is not null "

    .line 989
    .local v20, "where":Ljava/lang/String;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "vnd.android.cursor.item/photo"

    aput-object v23, v21, v22

    .line 991
    .local v21, "whereArg":[Ljava/lang/String;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 992
    .local v16, "rawContactMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .local v15, "portraitDataList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 995
    .local v14, "portraitContactIdBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 997
    .local v17, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-object/from16 v22, v0

    new-instance v23, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v15}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$6;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1005
    const/16 v24, 0x0

    .line 997
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1007
    .local v10, "endQueryPortrait":J
    const-string v22, "DEBUG_TAG"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "query contact protrait :"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v24, v10, v17

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_0

    .line 1011
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-object/from16 v22, v0

    new-instance v23, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$7;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;Ljava/util/Map;)V

    .line 1022
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "_id in ("

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    .line 1014
    invoke-interface/range {v22 .. v25}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1024
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1025
    .local v12, "endQueryRawContact":J
    const-string v22, "DEBUG_TAG"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "query endQueryRawContact :"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v24, v12, v10

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v6, 0x0

    .local v6, "cur":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    .line 1029
    .local v19, "total":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_1

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1035
    .local v8, "endBuild":J
    const-string v22, "DEBUG_TAG"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "query endBuild :"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v24, v8, v12

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    .end local v6    # "cur":I
    .end local v8    # "endBuild":J
    .end local v12    # "endQueryRawContact":J
    .end local v19    # "total":I
    :cond_0
    return-object v5

    .line 1029
    .restart local v6    # "cur":I
    .restart local v12    # "endQueryRawContact":J
    .restart local v19    # "total":I
    :cond_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .line 1030
    .local v7, "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v7, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->buildPortraitCheckSum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;Ljava/util/Map;)V

    .line 1031
    int-to-float v0, v6

    move/from16 v23, v0

    const/high16 v24, 0x3f800000

    add-float v23, v23, v24

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    goto :goto_0
.end method

.method private checkAndShowMockMessage(Z)Z
    .locals 2
    .param p1, "isAutoSyncContactPhoto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "isShowMockEncrpytGzip":Z
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isContactChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 239
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isGroupChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const/4 v0, 0x1

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 243
    if-eqz p1, :cond_2

    .line 244
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isProtraitChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    const/4 v0, 0x1

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 249
    if-eqz v0, :cond_3

    .line 250
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mockEncrpyt()V

    .line 251
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mockGzip()V

    .line 254
    :cond_3
    return v0
.end method

.method private checkSyncRule(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z
    .locals 1
    .param p1, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method private checksumFirstBackupCloudNoData(Z)V
    .locals 11
    .param p1, "isAutoSyncContactPhoto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 351
    .local v5, "startchecksum":J
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 352
    .local v4, "respRoot":Lorg/json/JSONObject;
    const-string v7, "result"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 354
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->setSyncType(I)V

    .line 356
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    iput-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    .line 357
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;-><init>()V

    .line 358
    .local v0, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-virtual {v7, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setChecksumRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;)V

    .line 359
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setChecksumResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 362
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 366
    if-eqz p1, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doPortraitChecksum()V

    .line 368
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-direct {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isChecksumError(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 369
    const/4 v7, 0x2

    iput v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 370
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    throw v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v0    # "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    .end local v4    # "respRoot":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v7, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 377
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    .restart local v4    # "respRoot":Lorg/json/JSONObject;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 378
    .local v2, "endcontact":J
    const-string v7, "DEBUG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "checksumFirstBackupCloudNoData checksum:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v9, v2, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void
.end method

.method private checksumWhenCloudChange(Z)V
    .locals 1
    .param p1, "isAutoSyncContactPhoto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doContactChecksum()V

    .line 384
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isChecksumError(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 386
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    throw v0

    .line 389
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPhotoChecksum(Z)V

    .line 390
    return-void
.end method

.method private checksumWhenCloudNoChange(Z)V
    .locals 11
    .param p1, "isAutoSyncContactPhoto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->startVirtualChecksumTask()V

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 300
    .local v5, "startchecksum":J
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->queryLocalChange()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    move-result-object v3

    .line 303
    .local v3, "localChange":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumMocker;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumMocker;-><init>()V

    invoke-virtual {v7, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumMocker;->checksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 304
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    iput-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    .line 311
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;-><init>()V

    .line 312
    .local v0, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    iget-object v7, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->delList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 315
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-virtual {v7, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setChecksumRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;)V

    .line 316
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setChecksumResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 319
    .local v1, "endcontact":J
    const-string v7, "DEBUG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mock contact checksum:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v9, v1, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPhotoChecksum(Z)V

    .line 322
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->stopVirtualChecksumTask()V

    .line 323
    const-string v7, "DEBUG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mock group photo checksum:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 312
    .end local v1    # "endcontact":J
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 313
    .local v4, "sid":Ljava/lang/Long;
    invoke-virtual {v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addContactLocalDeleteSid(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private clearContactPrivateData()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->clearContactSid(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 124
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->clearRawContactVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private createContactPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;
    .locals 4
    .param p1, "checksumPerformer"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    .prologue
    .line 780
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 781
    const-string v2, "CONTACT_SYNC_RULE"

    const/4 v3, 0x0

    .line 780
    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 782
    .local v0, "syncRule":I
    packed-switch v0, :pswitch_data_0

    .line 792
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 793
    invoke-direct {v1, v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)V

    .line 792
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    .line 796
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    return-object v1

    .line 784
    :pswitch_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncLocalPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 785
    invoke-direct {v1, v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncLocalPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)V

    .line 784
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    goto :goto_0

    .line 788
    :pswitch_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncCloudPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 789
    invoke-direct {v1, v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncCloudPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)V

    .line 788
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    goto :goto_0

    .line 782
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createContactPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;
    .locals 4
    .param p1, "photoCidLengthCache2"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;
    .param p2, "portraitChecksumResponse2"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    .prologue
    .line 811
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 812
    const-string v2, "CONTACT_SYNC_RULE"

    const/4 v3, 0x0

    .line 811
    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 814
    .local v0, "syncRule":I
    packed-switch v0, :pswitch_data_0

    .line 824
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 825
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V

    .line 824
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    .line 828
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    return-object v1

    .line 816
    :pswitch_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncLocalPerformerForDistinctNfs;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 817
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncLocalPerformerForDistinctNfs;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V

    .line 816
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    goto :goto_0

    .line 820
    :pswitch_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCloudPerformerForDistinctNfs;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 821
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCloudPerformerForDistinctNfs;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V

    .line 820
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    goto :goto_0

    .line 814
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createGroupPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;
    .locals 4
    .param p1, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;
    .param p2, "groupChecksumRespnse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    .line 675
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 676
    const-string v2, "CONTACT_SYNC_RULE"

    const/4 v3, 0x0

    .line 675
    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 678
    .local v0, "syncRule":I
    packed-switch v0, :pswitch_data_0

    .line 688
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 689
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 688
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    .line 692
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    return-object v1

    .line 680
    :pswitch_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncLocalPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 681
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncLocalPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 680
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    goto :goto_0

    .line 684
    :pswitch_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncCloudPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 685
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncCloudPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 684
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doContactChecksum()V
    .locals 4

    .prologue
    .line 617
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    .line 618
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v2, "CONTACT_SYNC_FAST_CHECK_LOCAL_ALLOWED"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setAsyncComputeChecksum(Z)V

    .line 619
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->start()V

    .line 620
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumBundle:Landroid/os/Bundle;

    .line 622
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    .line 623
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->getChecksumResponse()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    move-result-object v0

    .line 622
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 624
    return-void
.end method

.method private doGroupChecksum()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 634
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 636
    .local v3, "groupstart":J
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->buildGroupCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    move-result-object v6

    .line 637
    .local v6, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 638
    .local v0, "buildGroupEnd":J
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "buildGroupEnd:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v0, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const-string v8, "v5/checksum.action"

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v7

    .line 642
    .local v7, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 643
    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->toBytes()[B

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v5

    .line 645
    .local v5, "json":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-direct {v8, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "group ChecksumResponse:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void

    .line 646
    :catch_0
    move-exception v2

    .line 647
    .local v2, "e":Lorg/json/JSONException;
    const/4 v8, 0x2

    iput v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 648
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v8, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method private doPortraitChecksum()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 955
    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 958
    .local v3, "groupstart":J
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->buildPortraitCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;

    move-result-object v6

    .line 960
    .local v6, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 961
    .local v0, "buildPortraitEnd":J
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "buildPortraitEnd:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v0, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const-string v8, "v5/photo/checksum.action"

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v7

    .line 966
    .local v7, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    const/4 v8, 0x7

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 967
    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->toBytes()[B

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v5

    .line 970
    .local v5, "json":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-direct {v8, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "portrait ChecksumResponse:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void

    .line 971
    :catch_0
    move-exception v2

    .line 972
    .local v2, "e":Lorg/json/JSONException;
    const/4 v8, 0x2

    iput v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 973
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v8, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method private doSnapshotRawContact()V
    .locals 6

    .prologue
    .line 902
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 903
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 902
    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->clearRawContactVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 905
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getClonedContactData(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->keyMap()Ljava/util/Map;

    move-result-object v0

    .line 906
    .local v0, "contactMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 908
    .local v1, "tempCIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$5;

    invoke-direct {v3, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$5;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;Ljava/util/Set;)V

    .line 920
    const-string v4, "deleted = 0"

    const/4 v5, 0x0

    .line 908
    invoke-interface {v2, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method private findAllContactGroupReq()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 719
    const-string v1, "mimetype = ? and data1 is not null "

    .line 722
    .local v1, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "vnd.android.cursor.item/group_membership"

    aput-object v4, v2, v3

    .line 724
    .local v2, "whereArg":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->loadAllGroup()V

    .line 725
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 726
    .local v0, "allContactGroupReq":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;

    invoke-direct {v4, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;Ljava/util/Map;)V

    .line 759
    const/4 v5, 0x0

    .line 726
    invoke-interface {v3, v4, v1, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    return-object v0
.end method

.method private groupPhotoChecksum(Z)V
    .locals 2
    .param p1, "isAutoSyncContactPhoto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 394
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doGroupChecksum()V

    .line 395
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isChecksumError(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 397
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    throw v0

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 400
    if-eqz p1, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doPortraitChecksum()V

    .line 402
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isChecksumError(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 404
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    throw v0

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 408
    return-void
.end method

.method private isChecksumError(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;)Z
    .locals 1
    .param p1, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;

    .prologue
    .line 509
    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->getResult()I

    move-result v0

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isContactChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z
    .locals 9
    .param p1, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 459
    if-nez p1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v6

    .line 462
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCAdd()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 463
    .local v0, "cadd":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDel()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 464
    .local v1, "cdel":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDiff()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    .line 465
    .local v2, "cdiff":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSAdd()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 466
    .local v3, "sadd":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDel()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 467
    .local v4, "sdel":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDiff()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 469
    .local v5, "sdiff":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getSyncType()I

    move-result v8

    if-eq v8, v7, :cond_2

    .line 470
    add-int v8, v0, v1

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    add-int/2addr v8, v4

    add-int/2addr v8, v5

    if-lez v8, :cond_0

    :cond_2
    move v6, v7

    .line 471
    goto :goto_0
.end method

.method private isGroupChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z
    .locals 5
    .param p1, "groupChecksumRespnse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    const/4 v3, 0x0

    .line 444
    if-nez p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v3

    .line 447
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getGroupCDiff()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 448
    .local v0, "cdiff":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getGroupSAdd()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 449
    .local v1, "sadd":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getGroupSDiff()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 451
    .local v2, "sdiff":I
    add-int v4, v0, v1

    add-int/2addr v4, v2

    if-lez v4, :cond_0

    .line 452
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isProtraitChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)Z
    .locals 5
    .param p1, "portraitChecksumResponse2"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    .prologue
    const/4 v3, 0x0

    .line 429
    if-nez p1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v3

    .line 432
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitCDiff()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 433
    .local v0, "cdiff":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSAdd()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 434
    .local v1, "sadd":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDiff()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 436
    .local v2, "sdiff":I
    add-int v4, v0, v1

    add-int/2addr v4, v2

    if-lez v4, :cond_0

    .line 437
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private loadAllGroup()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$3;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$3;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->traverseAllGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;)V

    .line 776
    return-void
.end method

.method private mockEncrpyt()V
    .locals 1

    .prologue
    .line 1231
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 1237
    return-void
.end method

.method private mockGzip()V
    .locals 1

    .prologue
    .line 1240
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 1246
    return-void
.end method

.method private needContactPhotoSync()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 417
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-nez v2, :cond_1

    .line 424
    :cond_0
    :goto_0
    return v1

    .line 420
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v3, "problemSyncContactPhoto"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 421
    .local v0, "resolveObj":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private notifyProgressMockerEstimate()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->setContactChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 210
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->setPortraitChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->estimateProgress()V

    .line 212
    return-void
.end method

.method private queryLocalChange()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    .locals 2

    .prologue
    .line 327
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    move-result-object v0

    .line 328
    .local v0, "metaManager":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/ContactMetadataManager;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/ContactMetadataManager;->getLastestLocalChange(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    move-result-object v1

    return-object v1
.end method

.method private queryLocalCloudContactsNumber()V
    .locals 4

    .prologue
    .line 833
    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->bNeedToBackuped:Z

    if-eqz v1, :cond_0

    .line 837
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doFetchServerContactCount()I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 843
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber()I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    .line 845
    :cond_0
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    if-eq v1, v2, :cond_1

    .line 846
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v2, "CONTACT_SYNC_FAST_CHECK_LOCAL_ALLOWED"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 850
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->numberBundle:Landroid/os/Bundle;

    .line 851
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->numberBundle:Landroid/os/Bundle;

    const-string v2, "cloud_number"

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->numberBundle:Landroid/os/Bundle;

    const-string v2, "local_number"

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-void

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 840
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 841
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 848
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v2, "CONTACT_SYNC_FAST_CHECK_LOCAL_ALLOWED"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private saveLastestSyncInfo()V
    .locals 6

    .prologue
    .line 924
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v3, "CONTACT_LAST_SYNC_USER"

    .line 925
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 924
    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doFetchServerVersion()Ljava/lang/Long;

    move-result-object v1

    .line 930
    .local v1, "version":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 931
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->writeLastServerVersion(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 938
    .end local v1    # "version":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 935
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 936
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private saveStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 877
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v0, :cond_0

    .line 878
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doSnapshotRawContact()V

    .line 881
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v1, "CONTACT_SYNC_RULE"

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 883
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v1, "CONTACT_SYNC_NOTIFY_USER_CHOOSE"

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 885
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->saveLastestSyncInfo()V

    .line 887
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->saveContactChecksumValue()V

    .line 890
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->queryLocalChangeByVersion(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    .line 891
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->persist(Landroid/content/Context;)V

    .line 892
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "problemSyncContactSaveStatusEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 895
    :cond_1
    return-void
.end method

.method private saveStatusInBackground()V
    .locals 2

    .prologue
    .line 868
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$4;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$4;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 873
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 874
    return-void
.end method

.method private startVirtualChecksumTask()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 260
    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doingNetWork:Z

    .line 261
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 262
    .local v0, "exec":Ljava/util/concurrent/ExecutorService;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->virtualNetWork:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method private stopVirtualChecksumTask()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doingNetWork:Z

    .line 266
    return-void
.end method

.method private syncContact()V
    .locals 1

    .prologue
    .line 656
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 657
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->createContactPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    .line 658
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->start()V

    .line 660
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactBundle:Landroid/os/Bundle;

    .line 661
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getResult()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 662
    return-void
.end method

.method private syncGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V
    .locals 1
    .param p1, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;
    .param p2, "groupChecksumRespnse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    .line 666
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 667
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->createGroupPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    .line 668
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->start()V

    .line 669
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    .line 670
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getResult()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 671
    return-void
.end method

.method private syncPhoto(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V
    .locals 1
    .param p1, "photoCidLengthCache2"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;
    .param p2, "portraitChecksumResponse2"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 803
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->createContactPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    .line 804
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->start()V

    .line 805
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    .line 806
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getResult()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 807
    return-void
.end method

.method private validateContactRule()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 534
    .local v7, "validateStart":J
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 535
    const v10, 0x3e4ccccd

    invoke-virtual {p0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 536
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doFetchServerContactCount()I

    move-result v10

    iput v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 538
    .local v3, "fetchcount":J
    const v10, 0x3ecccccd

    invoke-virtual {p0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 539
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber()I

    move-result v10

    iput v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 541
    .local v1, "fetchLocalCount":J
    const-string v10, "DEBUG_TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "fetchLocalCount:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v1, v3

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const v10, 0x3f19999a

    invoke-virtual {p0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 545
    const-string v0, "account_type"

    .line 546
    .local v0, "accountTypeField":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "=\'com.tencent.mm.account\' and deleted = 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 547
    .local v9, "weixinContactCount":I
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    .line 548
    .local v5, "phoneLocalContactCount":I
    if-lez v9, :cond_0

    .line 549
    sub-int/2addr v5, v9

    .line 552
    :cond_0
    iget v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    if-nez v10, :cond_1

    iget v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    if-nez v10, :cond_1

    .line 553
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->clearContactPrivateData()V

    .line 554
    const/4 v10, 0x0

    .line 595
    :goto_0
    return v10

    .line 578
    :cond_1
    iget v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    if-eqz v10, :cond_2

    if-gtz v5, :cond_3

    .line 580
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->clearContactPrivateData()V

    .line 582
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->resetLastestLocalChange()V

    .line 585
    if-gtz v5, :cond_4

    .line 586
    const/4 v6, 0x2

    .line 590
    .local v6, "syncRule":I
    :goto_1
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v11, "CONTACT_SYNC_RULE"

    invoke-static {v10, v11, v6}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 593
    .end local v6    # "syncRule":I
    :cond_3
    const v10, 0x3f4ccccd

    invoke-virtual {p0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 594
    const-string v10, "DEBUG_TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "validate time:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v10, 0x1

    goto :goto_0

    .line 588
    :cond_4
    const/4 v6, 0x1

    .restart local v6    # "syncRule":I
    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancel()V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancel()V

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancel()V

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    if-eqz v0, :cond_3

    .line 610
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancel()V

    .line 612
    :cond_3
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancel()V

    .line 613
    return-void
.end method

.method protected doFetchServerContactCount()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 1105
    const-string v8, "v4/count.action"

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v5

    .line 1107
    .local v5, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1108
    .local v6, "startcount":J
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v3

    .line 1111
    .local v3, "respString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    .local v4, "response":Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1117
    .local v1, "fetchcount":J
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "fetchCount:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v1, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const-string v8, "count"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    return v8

    .line 1112
    .end local v1    # "fetchcount":J
    .end local v4    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "e":Lorg/json/JSONException;
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v8, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method protected doFetchServerVersion()Ljava/lang/Long;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 1130
    const-string v8, "v4/version.action"

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v7

    .line 1132
    .local v7, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1133
    .local v0, "beforeFetchVersion":J
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object v5

    .line 1136
    .local v5, "respString":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    .local v6, "response":Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1142
    .local v3, "endFetchVersion":J
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "endFetchVersion:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v3, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const-string v8, "version"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    return-object v8

    .line 1137
    .end local v3    # "endFetchVersion":J
    .end local v6    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1138
    .local v2, "e":Lorg/json/JSONException;
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v8, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 1152
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1153
    .local v0, "syncBundle":Landroid/os/Bundle;
    const-wide/16 v1, 0x0

    .line 1154
    .local v1, "totalFlow":J
    const-wide/16 v3, 0x0

    .line 1155
    .local v3, "totalZipFlow":J
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 1156
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->addOther2Bundle(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1157
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupBundle:Landroid/os/Bundle;

    const-string v6, "real_flow"

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 1158
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupBundle:Landroid/os/Bundle;

    const-string v6, "gzip_flow"

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 1161
    :cond_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 1162
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->addOther2Bundle(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1163
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactBundle:Landroid/os/Bundle;

    const-string v6, "real_flow"

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 1164
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactBundle:Landroid/os/Bundle;

    const-string v6, "gzip_flow"

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 1167
    :cond_1
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 1168
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->addOther2Bundle(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1169
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    const-string v6, "real_flow"

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 1170
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    const-string v6, "gzip_flow"

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 1173
    :cond_2
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 1174
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumBundle:Landroid/os/Bundle;

    const-string v6, "real_flow"

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 1175
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumBundle:Landroid/os/Bundle;

    const-string v6, "gzip_flow"

    .line 1176
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 1179
    :cond_3
    const-string v5, "real_flow"

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1180
    const-string v5, "gzip_flow"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1182
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->numberBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    .line 1183
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->numberBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->addOther2Bundle(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1186
    :cond_4
    const-string v5, "progressstate"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1188
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v5, :cond_5

    .line 1189
    const-string v5, "result"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getResult()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1192
    :cond_5
    return-object v0
.end method

.method protected getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    .locals 1
    .param p1, "buzzURL"    # Ljava/lang/String;

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactUtil;->getURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v0

    return-object v0
.end method

.method protected notifyFinish()V
    .locals 6

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->queryLocalCloudContactsNumber()V

    .line 217
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->asyncSaveStatus()V

    .line 218
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->endProgress()V

    .line 219
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 220
    const-string v0, "DEBUG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++++++++++++++++++TotalTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, "DEBUG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++++++++++++++++++SyncTime = TotalTime - ThinkTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->start:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->thinkTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    .line 223
    return-void
.end method

.method public notifyStepProgress(F)V
    .locals 6
    .param p1, "progress"    # F

    .prologue
    const/high16 v5, 0x420c0000

    const/high16 v4, 0x40a00000

    const/high16 v3, 0x40000000

    const/high16 v2, 0x3f800000

    .line 1263
    const/4 v0, 0x0

    .line 1264
    .local v0, "currentTaskProgress":I
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1305
    :goto_0
    if-lez v0, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->onTaskUpdateProgress(I)V

    .line 1308
    :cond_0
    return-void

    .line 1266
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_0

    .line 1269
    :sswitch_1
    const/high16 v1, 0x40800000

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1270
    goto :goto_0

    .line 1272
    :sswitch_2
    mul-float v1, v4, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x5

    .line 1273
    goto :goto_0

    .line 1275
    :sswitch_3
    mul-float v1, v3, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0xa

    .line 1276
    goto :goto_0

    .line 1278
    :sswitch_4
    mul-float v1, v3, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0xc

    .line 1279
    goto :goto_0

    .line 1281
    :sswitch_5
    const/high16 v1, 0x40c00000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0xe

    .line 1282
    goto :goto_0

    .line 1284
    :sswitch_6
    mul-float v1, v3, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x14

    .line 1285
    goto :goto_0

    .line 1287
    :sswitch_7
    mul-float v1, v2, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x16

    .line 1288
    goto :goto_0

    .line 1290
    :sswitch_8
    mul-float v1, v2, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x17

    .line 1291
    goto :goto_0

    .line 1293
    :sswitch_9
    mul-float v1, v5, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x18

    .line 1294
    goto :goto_0

    .line 1296
    :sswitch_a
    mul-float v1, v4, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x3c

    .line 1297
    goto :goto_0

    .line 1299
    :sswitch_b
    mul-float v1, v5, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x41

    .line 1300
    goto :goto_0

    .line 1302
    :sswitch_c
    const/high16 v1, 0x42c80000

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_0

    .line 1264
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0x7fffffff -> :sswitch_c
    .end sparse-switch
.end method

.method public onMockProgress(II)V
    .locals 1
    .param p1, "curProgress"    # I
    .param p2, "totalProgress"    # I

    .prologue
    .line 1324
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    .line 1325
    return-void
.end method

.method public onStepProgress(IILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "cur"    # I
    .param p2, "total"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    .line 1209
    if-nez p3, :cond_1

    move v0, v1

    .line 1211
    .local v0, "step":I
    :goto_0
    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    if-eq v1, v0, :cond_0

    .line 1212
    const-string v1, "progressstate"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 1215
    :cond_0
    const/high16 v1, 0x3f800000

    int-to-float v2, p1

    mul-float/2addr v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 1217
    const/4 v1, 0x1

    return v1

    .line 1210
    .end local v0    # "step":I
    :cond_1
    const-string v2, "progressstate"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method protected reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "cost"    # J
    .param p7, "operateType"    # Ljava/lang/String;
    .param p8, "changeNum"    # I

    .prologue
    .line 1313
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 1314
    .local v5, "params":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    const-string v1, "userName"

    invoke-virtual {v5, v0, v1, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1315
    const/4 v0, 0x2

    const-string v1, "contactNum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1316
    const/4 v0, 0x5

    const-string v1, "APPTOKEN"

    const-string v2, "PJPRUFMX2B3"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1318
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    .line 1320
    return-void
.end method

.method protected saveContactChecksumValue()V
    .locals 5

    .prologue
    .line 941
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    .line 942
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 941
    invoke-direct {v0, v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    .line 943
    .local v0, "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->buidChecksum()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    move-result-object v2

    .line 944
    .local v2, "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    iget-object v1, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;->allContactChecksumObjectMap:Ljava/util/Map;

    .line 945
    .local v1, "checksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->setContactChecksumMap(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 946
    return-void
.end method

.method protected setProgressStep(I)V
    .locals 3
    .param p1, "progressStep"    # I

    .prologue
    const/high16 v2, 0x3f800000

    .line 1221
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    if-le p1, v0, :cond_0

    .line 1222
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 1223
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    .line 1224
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1225
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 1228
    :cond_0
    return-void
.end method

.method protected startTask()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->start:J

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->startProgress()V

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->validateContactRule()Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->needContactPhotoSync()Z

    move-result v17

    .line 139
    .local v17, "isAutoSyncContactPhoto":Z
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->bNeedToBackuped:Z

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doFetchServerVersion()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 142
    .local v11, "currentCloudVersion":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 143
    .local v15, "endFetchVersion":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->readLastServerVersion(Landroid/content/Context;)J

    move-result-wide v18

    .line 144
    .local v18, "savedCloudVersion":J
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 145
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 146
    cmp-long v2, v11, v18

    if-nez v2, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v3, "CONTACT_SYNC_FAST_CHECK_LOCAL_ALLOWED"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->containsContactSid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumWhenCloudNoChange(Z)V

    .line 163
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 165
    .local v13, "endChecksum":J
    const-string v2, "DEBUG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "endChecksum:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v13, v15

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v2, "DEBUG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start to endChecksum####:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->start:J

    sub-long v4, v13, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkSyncRule(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkAndShowMockMessage(Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->bNeedToBackuped:Z

    .line 172
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->bNeedToBackuped:Z

    if-eqz v2, :cond_0

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 177
    .local v26, "userchoose":J
    const-string v2, "DEBUG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "user choose####:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v26, v13

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyProgressMockerEstimate()V

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->syncContact()V

    .line 182
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v2, :cond_0

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 186
    .local v20, "syncContact":J
    const-string v2, "DEBUG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syncContact####:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v20, v26

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->syncGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 190
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v2, :cond_0

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 194
    .local v22, "syncGroup":J
    const-string v2, "DEBUG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syncGroup####:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v22, v20

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 197
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->isPhotoChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->syncPhoto(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V

    .line 200
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 201
    .local v24, "syncPhoto":J
    const-string v2, "DEBUG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syncPhoto####:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v24, v22

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->start:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cost:J

    .line 204
    const-string v3, "LCPContact"

    const-string v4, "CONTACT_SYNC"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 205
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cost:J

    const-string v9, "2"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    move-object/from16 v2, p0

    .line 204
    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 154
    .end local v13    # "endChecksum":J
    .end local v20    # "syncContact":J
    .end local v22    # "syncGroup":J
    .end local v24    # "syncPhoto":J
    .end local v26    # "userchoose":J
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    if-nez v2, :cond_4

    .line 155
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    if-lez v2, :cond_4

    .line 156
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 157
    const-string v4, "CONTACT_SYNC_RULE"

    const/4 v5, 0x0

    .line 156
    invoke-static {v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 159
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumFirstBackupCloudNoData(Z)V

    goto/16 :goto_1

    .line 161
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumWhenCloudChange(Z)V

    goto/16 :goto_1
.end method
