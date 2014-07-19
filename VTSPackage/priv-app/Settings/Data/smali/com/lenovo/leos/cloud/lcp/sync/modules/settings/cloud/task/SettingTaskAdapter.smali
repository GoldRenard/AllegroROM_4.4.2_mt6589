.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source "SettingTaskAdapter.java"


# static fields
.field public static final STATUS_ONGOING:I = 0x64

.field public static final STATUS_ONGOING_BACKUP_DB:I = 0x67

.field public static final STATUS_ONGOING_BACKUP_NET:I = 0x68

.field public static final STATUS_ONGOING_DIFF_DB:I = 0x65

.field public static final STATUS_ONGOING_DIFF_NET:I = 0x66


# instance fields
.field protected cost:J

.field protected progressStatus:I

.field protected settingDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

.field protected start:J


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 1
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;

    invoke-direct {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->settingDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    .line 21
    return-void
.end method


# virtual methods
.method protected abstract notifySubProgress(F)V
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
    .line 40
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 41
    .local v5, "params":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    const-string v1, "userName"

    invoke-virtual {v5, v0, v1, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 42
    const/4 v0, 0x5

    const-string v1, "APPTOKEN"

    const-string v2, "PJPRUFMX2B3"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 44
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

    .line 45
    return-void
.end method

.method protected setProgressStatus(I)V
    .locals 1
    .param p1, "progressStatus"    # I

    .prologue
    .line 32
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->notifySubProgress(F)V

    .line 33
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->progressStatus:I

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->notifySubProgress(F)V

    .line 35
    return-void
.end method
