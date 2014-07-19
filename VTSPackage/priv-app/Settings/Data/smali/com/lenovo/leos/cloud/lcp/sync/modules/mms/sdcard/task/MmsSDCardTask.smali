.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
.source "MmsSDCardTask.java"


# static fields
.field public static final CATOGARY:Ljava/lang/String; = "mms"

.field public static final MODE_NAME:Ljava/lang/String; = "MMS-"

.field public static final PROBLEM_NAME_GET_PACKAGE_PATH:Ljava/lang/String; = "GET_PACKAGE_PATH"

.field private static final TAG:Ljava/lang/String; = "MmsSDCardTask"

.field public static final TMP_EXPORT_FORMAT:Ljava/lang/String; = "-tmp"


# instance fields
.field protected context:Landroid/content/Context;

.field protected cost:J

.field protected countOfAdd:I

.field protected countOfUpdate:I

.field protected mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

.field protected start:J


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 1
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 27
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    .line 28
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfUpdate:I

    .line 35
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    .line 36
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->context:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method protected beforeTask()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    return-object v0
.end method

.method protected abstract notifyStepProgress(F)V
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
    .line 62
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 63
    .local v5, "params":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    const-string v1, "userName"

    invoke-virtual {v5, v0, v1, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 64
    const/4 v0, 0x2

    const-string v1, "mmsNum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 65
    const/4 v0, 0x3

    const-string v1, "isAuto"

    const-string v2, "0"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 66
    const/4 v0, 0x5

    const-string v1, "APPTOKEN"

    const-string v2, "PJPRUFMX2B3"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 68
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

    .line 70
    return-void
.end method

.method protected setProgressStep(I)V
    .locals 3
    .param p1, "progressStep"    # I

    .prologue
    .line 40
    const-string v0, "MmsSDCardTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "change progress status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->progressStep:I

    if-ge p1, v0, :cond_0

    .line 42
    const-string v0, "MmsSDCardTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The current progressStep( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should bigger than this.progerssStep( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->progressStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->notifyStepProgress(F)V

    .line 46
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->progressStep:I

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->notifyStepProgress(F)V

    .line 48
    return-void
.end method

.method protected startTask()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method
