.class Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;
.super Ljava/lang/Object;
.source "DispatchConfig.java"

# interfaces
.implements Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private eventNumThres2G:[I

.field private eventNumThres3G4G:[I

.field private eventNumThresWifi:[I

.field private needReport2G:[Z

.field private needReport3G4G:[Z

.field private needReportWifi:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "DispatchConfig"

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->reset()V

    .line 24
    return-void
.end method


# virtual methods
.method public getThreshold(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I
    .locals 2
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 75
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->getNetworkStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->eventNumThres3G4G:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    return v0

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->eventNumThres2G:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->eventNumThres3G4G:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->eventNumThresWifi:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public includeCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "Dispatch2G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Dispatch3G4G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DispatchWifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readyForReport(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z
    .locals 3
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->TAG:Ljava/lang/String;

    const-string v2, "Now is Roaming"

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return v0

    .line 92
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->getNetworkStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 100
    :pswitch_1
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->TAG:Ljava/lang/String;

    const-string v1, "Now is NOTCONCERN"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->needReport2G:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    goto :goto_0

    .line 96
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->needReport3G4G:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    goto :goto_0

    .line 98
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->needReportWifi:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->REPORT_2G:[Z

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->needReport2G:[Z

    .line 29
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->REPORT_3G4G:[Z

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->needReport3G4G:[Z

    .line 30
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->REPORT_Wifi:[Z

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->needReportWifi:[Z

    .line 31
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->STATUS_2G:[I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->eventNumThres2G:[I

    .line 32
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->STATUS_3G4G:[I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->eventNumThres3G4G:[I

    .line 33
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->STATUS_WIFI:[I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->eventNumThresWifi:[I

    .line 34
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 40
    :try_start_0
    const-string v6, "\u0001"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "values":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 42
    .local v3, "prio":I
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 43
    .local v2, "num":I
    if-lez v2, :cond_3

    .line 44
    .local v1, "flag":Z
    :goto_0
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    aget v5, v5, v3

    div-int/lit8 v5, v5, 0x2

    if-gt v2, v5, :cond_4

    .line 45
    :goto_1
    if-lez v2, :cond_5

    sget-object v5, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    aget v5, v5, v3

    if-ge v2, v5, :cond_5

    if-ltz v3, :cond_5

    sget-object v5, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 47
    const-string v5, "Dispatch2G"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->eventNumThres2G:[I

    aput v2, v5, v3

    .line 49
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->needReport2G:[Z

    aput-boolean v1, v5, v3

    .line 51
    :cond_0
    const-string v5, "Dispatch3G4G"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->eventNumThres3G4G:[I

    aput v2, v5, v3

    .line 53
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->needReport3G4G:[Z

    aput-boolean v1, v5, v3

    .line 55
    :cond_1
    const-string v5, "DispatchWifi"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->eventNumThresWifi:[I

    aput v2, v5, v3

    .line 57
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->needReportWifi:[Z

    aput-boolean v1, v5, v3

    .line 59
    :cond_2
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Prio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Flag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v1    # "flag":Z
    .end local v2    # "num":I
    .end local v3    # "prio":I
    .end local v4    # "values":[Ljava/lang/String;
    :goto_2
    return-void

    .restart local v2    # "num":I
    .restart local v3    # "prio":I
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_3
    move v1, v5

    .line 43
    goto :goto_0

    .line 44
    .restart local v1    # "flag":Z
    :cond_4
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    aget v5, v5, v3

    div-int/lit8 v2, v5, 0x2

    goto :goto_1

    .line 61
    :cond_5
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Prioriy or Number is illegal"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "flag":Z
    .end local v2    # "num":I
    .end local v3    # "prio":I
    .end local v4    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Wrong Value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
