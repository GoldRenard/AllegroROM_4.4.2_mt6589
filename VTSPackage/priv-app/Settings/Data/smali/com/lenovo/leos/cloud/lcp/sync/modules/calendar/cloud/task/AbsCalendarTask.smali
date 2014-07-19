.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source "AbsCalendarTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;


# static fields
.field public static final ONGOING_C_BACKUP_AFT:I = 0x3ed

.field public static final ONGOING_C_BACKUP_NET:I = 0x3ec

.field public static final ONGOING_C_BACKUP_PRE:I = 0x3eb

.field public static final ONGOING_C_CHECKSUM_NET:I = 0x3ea

.field public static final ONGOING_C_CHECKSUM_PRE:I = 0x3e9

.field public static final ONGOING_ME_BACKUP_AFT:I = 0x3f2

.field public static final ONGOING_ME_BACKUP_NET:I = 0x3f1

.field public static final ONGOING_ME_BACKUP_PRE:I = 0x3f0

.field public static final ONGOING_ME_CHECKSUM_NET:I = 0x3ef

.field public static final ONGOING_ME_CHECKSUM_PRE:I = 0x3ee

.field public static final ONGOING_SE_BACKUP_AFT:I = 0x3f7

.field public static final ONGOING_SE_BACKUP_NET:I = 0x3f6

.field public static final ONGOING_SE_BACKUP_PRE:I = 0x3f5

.field public static final ONGOING_SE_CHECKSUM_NET:I = 0x3f4

.field public static final ONGOING_SE_CHECKSUM_PRE:I = 0x3f3

.field public static final STATUS_BEFORE_START:I = 0x0

.field public static final STATUS_END:I = 0x2710

.field public static final STATUS_ONGOING:I = 0x3e8

.field public static final STATUS_START:I = 0x1

.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected opAddCount:I

.field protected opDeleteCount:I

.field protected opUpdateCount:I

.field protected virtualTaskProgressNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "AbsCalendarTask"

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Landroid/content/Context;)V

    .line 44
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    .line 46
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opAddCount:I

    .line 47
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opUpdateCount:I

    .line 48
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opDeleteCount:I

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 1
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 44
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    .line 46
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opAddCount:I

    .line 47
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opUpdateCount:I

    .line 48
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opDeleteCount:I

    .line 56
    return-void
.end method


# virtual methods
.method public GET(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;
    .locals 1
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GETB(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B
    .locals 1
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public POST(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;
    .locals 1
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # [B
    .param p3, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opAddCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v1, "countOfUpdate"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opUpdateCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v1, "countOfDel"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opDeleteCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    return-object v0
.end method

.method public onStepProgress(IILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "cur"    # I
    .param p2, "total"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x41200000

    const/high16 v6, 0x40a00000

    const/high16 v5, 0x40400000

    const/high16 v4, 0x40000000

    .line 66
    if-lez p2, :cond_0

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v0, v2, v3

    .line 68
    .local v0, "progress":F
    :goto_0
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    sparse-switch v2, :sswitch_data_0

    .line 123
    :goto_1
    const/4 v1, 0x0

    return v1

    .end local v0    # "progress":F
    :cond_0
    move v0, v1

    .line 66
    goto :goto_0

    .line 70
    .restart local v0    # "progress":F
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_1

    .line 73
    :sswitch_1
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_1

    .line 76
    :sswitch_2
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    mul-float v2, v4, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_1

    .line 79
    :sswitch_3
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x2

    mul-float v2, v5, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_1

    .line 82
    :sswitch_4
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x5

    mul-float v2, v4, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_1

    .line 85
    :sswitch_5
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x7

    mul-float v2, v5, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_1

    .line 88
    :sswitch_6
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0xa

    mul-float v2, v6, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_1

    .line 91
    :sswitch_7
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0xf

    mul-float v2, v7, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_1

    .line 94
    :sswitch_8
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x19

    mul-float v2, v6, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_1

    .line 97
    :sswitch_9
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x1e

    const/high16 v2, 0x41f00000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_1

    .line 100
    :sswitch_a
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x3c

    mul-float v2, v7, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto/16 :goto_1

    .line 103
    :sswitch_b
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x46

    mul-float v2, v7, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto/16 :goto_1

    .line 106
    :sswitch_c
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x50

    mul-float v2, v4, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto/16 :goto_1

    .line 109
    :sswitch_d
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x52

    mul-float v2, v5, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto/16 :goto_1

    .line 112
    :sswitch_e
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x55

    mul-float v2, v4, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto/16 :goto_1

    .line 115
    :sswitch_f
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x57

    mul-float v2, v5, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto/16 :goto_1

    .line 118
    :sswitch_10
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->virtualTaskProgressNumber:I

    add-int/lit8 v1, v1, 0x5a

    mul-float v2, v6, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto/16 :goto_1

    .line 121
    :sswitch_11
    const/high16 v1, 0x42c80000

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto/16 :goto_1

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
        0x3ef -> :sswitch_8
        0x3f0 -> :sswitch_9
        0x3f1 -> :sswitch_a
        0x3f2 -> :sswitch_b
        0x3f3 -> :sswitch_c
        0x3f4 -> :sswitch_d
        0x3f5 -> :sswitch_e
        0x3f6 -> :sswitch_f
        0x3f7 -> :sswitch_10
        0x2710 -> :sswitch_11
    .end sparse-switch
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
    .line 194
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 195
    .local v5, "params":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    const-string v1, "userName"

    invoke-virtual {v5, v0, v1, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 196
    const/4 v0, 0x2

    const-string v1, "contactNum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 197
    const/4 v0, 0x5

    const-string v1, "APPTOKEN"

    const-string v2, "PJPRUFMX2B3"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 199
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

    .line 200
    return-void
.end method

.method public setProgressStatus(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->onStepProgress(IILandroid/os/Bundle;)Z

    .line 62
    return-void
.end method

.method protected abstract startCalendarTask()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract startMainEventTask()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract startSubEventTask()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected startTask()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 155
    .local v5, "start":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->taskInitAction()V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->startCalendarTask()V

    .line 159
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v10, :cond_0

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->startMainEventTask()V

    .line 163
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v10, :cond_1

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->startSubEventTask()V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->taskFinishAction()V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    .local v2, "end":J
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    .line 186
    sget-object v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "time cost:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v2, v5

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-void

    .line 166
    .end local v2    # "end":J
    :catch_0
    move-exception v7

    .line 167
    .local v7, "ste":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    const/4 v10, 0x4

    :try_start_1
    move-object/from16 v0, p0

    iput v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->taskFinishAction()V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    .restart local v2    # "end":J
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    .line 186
    sget-object v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "time cost:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v2, v5

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v2    # "end":J
    .end local v7    # "ste":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    :catch_1
    move-exception v8

    .line 169
    .local v8, "uce":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    const/4 v10, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->taskFinishAction()V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    .restart local v2    # "end":J
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    .line 186
    sget-object v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "time cost:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v2, v5

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    .end local v2    # "end":J
    .end local v8    # "uce":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :catch_2
    move-exception v9

    .line 171
    .local v9, "unhe":Ljava/net/UnknownHostException;
    const/4 v10, 0x6

    :try_start_3
    move-object/from16 v0, p0

    iput v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->taskFinishAction()V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    .restart local v2    # "end":J
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    .line 186
    sget-object v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "time cost:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v2, v5

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    .end local v2    # "end":J
    .end local v9    # "unhe":Ljava/net/UnknownHostException;
    :catch_3
    move-exception v4

    .line 173
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->taskFinishAction()V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    .restart local v2    # "end":J
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    .line 186
    sget-object v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "time cost:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v2, v5

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    .end local v2    # "end":J
    :cond_2
    const/4 v10, 0x3

    goto :goto_1

    .line 174
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 176
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->taskFinishAction()V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    .restart local v2    # "end":J
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    .line 186
    sget-object v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "time cost:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v2, v5

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    .end local v2    # "end":J
    :cond_3
    const/4 v10, 0x2

    :try_start_6
    move-object/from16 v0, p0

    iput v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->taskFinishAction()V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    .restart local v2    # "end":J
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    .line 186
    sget-object v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "time cost:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v13, v2, v5

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    throw v10
.end method

.method protected taskFinishAction()V
    .locals 1

    .prologue
    .line 208
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->setProgressStatus(I)V

    .line 209
    return-void
.end method

.method protected taskInitAction()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->setProgressStatus(I)V

    .line 206
    return-void
.end method
