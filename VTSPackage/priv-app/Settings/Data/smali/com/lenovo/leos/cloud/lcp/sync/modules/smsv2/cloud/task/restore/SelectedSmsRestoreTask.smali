.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;
.source "SelectedSmsRestoreTask.java"


# static fields
.field private static final LIMIT:I = 0x3e8


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 28
    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chooser"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    .prologue
    .line 36
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 37
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->cacheSmsKey2Locks:Ljava/util/Map;

    return-object v0
.end method

.method private buildExcludeIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getSmsList()Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, "smsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "excludeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    return-object v0

    .line 97
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    .line 98
    .local v1, "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private doNearSmsRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreNearRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    .locals 5
    .param p1, "nearRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreNearRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const-string v1, "pcs/v3/nearsmslist?gzip=true"

    .line 128
    .local v1, "restoreUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getSmsURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    .line 129
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreNearRequest;->toBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "respStr":Ljava/lang/String;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    invoke-direct {v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method private doRestoreBySmsList()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getSmsList()Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "smsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 76
    .local v1, "total":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->saveSms2Db(Ljava/util/List;Ljava/util/List;II)V

    goto :goto_0
.end method

.method private doRestoreCache()V
    .locals 10

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getStartTime()Ljava/lang/Long;

    move-result-object v9

    .line 141
    .local v9, "startTime":Ljava/lang/Long;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getEndTime()Ljava/lang/Long;

    move-result-object v7

    .line 142
    .local v7, "endTime":Ljava/lang/Long;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getKeyword()Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "keyword":Ljava/lang/String;
    invoke-static {v9, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildTimeAndKeywordWhere(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "where":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->getWhereArgs()[Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "whereArgs":[Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;)V

    .line 153
    .local v1, "visitor":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->traverseSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)Z

    .line 154
    return-void
.end method

.method private doRestoreSelectedAllSms()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3e8

    .line 81
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getAllSmsListSize()I

    move-result v6

    .line 82
    .local v6, "total":I
    const/4 v2, 0x0

    .line 83
    .local v2, "offset":I
    invoke-direct {p0, v6, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;->getQuerySize(II)I

    move-result v3

    .line 84
    .local v3, "querySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 92
    return-void

    .line 85
    :cond_0
    invoke-direct {p0, v9, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;->getResponseByChooser(II)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    move-result-object v4

    .line 86
    .local v4, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getAllSms()Ljava/util/List;

    move-result-object v5

    .line 87
    .local v5, "smsAllCloud":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;->buildExcludeIds()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "excludeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v5, v0, v6, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->saveSms2Db(Ljava/util/List;Ljava/util/List;II)V

    .line 89
    add-int/lit16 v2, v2, 0x3e8

    .line 90
    int-to-float v7, v1

    const/high16 v8, 0x3f800000

    mul-float/2addr v7, v8

    int-to-float v8, v3

    div-float/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getQuerySize(II)I
    .locals 6
    .param p1, "total"    # I
    .param p2, "limit"    # I

    .prologue
    .line 135
    int-to-double v2, p1

    int-to-double v4, p2

    div-double v0, v2, v4

    .line 136
    .local v0, "count":D
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private getResponseByChooser(II)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    .locals 5
    .param p1, "limit"    # I
    .param p2, "offset"    # I

    .prologue
    .line 104
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getStartTime()Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getEndTime()Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildNearSmsListReq(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "jsonStr":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreNearRequest;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreNearRequest;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "nearRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreNearRequest;
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;->singleNearRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreNearRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected resolveChooseResultData()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    if-nez v1, :cond_0

    .line 59
    const-string v1, "PROBLEM_GET_SMS_CHOOSE_RESULT"

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "param":Ljava/lang/Object;
    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    .end local v0    # "param":Ljava/lang/Object;
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    if-nez v1, :cond_1

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cant find chooseResult, can\'t do backup task!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1
    return-void
.end method

.method protected singleNearRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreNearRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    .locals 6
    .param p1, "nearRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreNearRequest;

    .prologue
    const/4 v3, 0x0

    .line 111
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;->doNearSmsRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreNearRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    move-result-object v1

    .line 112
    .local v1, "resotreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getResult()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 113
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 114
    const/4 v2, -0x2

    move-object v1, v3

    .line 121
    .end local v1    # "resotreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    .end local v2    # "result":I
    :cond_0
    :goto_0
    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SmsTaskAdapter"

    const-string v5, "singleRestore error "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 121
    goto :goto_0
.end method

.method protected startTaskWithSmoothProgress()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->start:J

    .line 44
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;->resolveChooseResultData()V

    .line 45
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;->doRestoreCache()V

    .line 46
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->isSelectedAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;->doRestoreSelectedAllSms()V

    .line 52
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->cost:J

    .line 53
    const-string v1, "LCPSms"

    const-string v2, "SMS_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 54
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->cost:J

    const-string v7, "1"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 53
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 55
    return-void

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;->doRestoreBySmsList()V

    goto :goto_0
.end method
