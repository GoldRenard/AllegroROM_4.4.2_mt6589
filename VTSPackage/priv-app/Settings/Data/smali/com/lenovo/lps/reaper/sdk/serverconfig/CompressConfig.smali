.class Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;
.super Ljava/lang/Object;
.source "CompressConfig.java"

# interfaces
.implements Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static compressThreshold2G:I

.field private static compressThreshold3G4G:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "CompressConfig"

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->reset()V

    .line 18
    return-void
.end method


# virtual methods
.method public includeCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "Compress2G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Compress3G4G"

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

.method public needCompress(I)Z
    .locals 3
    .param p1, "eventNum"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->getNetworkStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 50
    :pswitch_0
    sget v2, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->compressThreshold2G:I

    if-lez v2, :cond_2

    sget v2, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->compressThreshold2G:I

    if-lt p1, v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    .line 52
    :pswitch_1
    sget v2, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->compressThreshold3G4G:I

    if-lez v2, :cond_0

    sget v2, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->compressThreshold3G4G:I

    if-lt p1, v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 22
    sput v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->compressThreshold2G:I

    .line 23
    sput v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->compressThreshold3G4G:I

    .line 24
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 30
    .local v1, "num":I
    const-string v2, "Compress2G"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    sput v1, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->compressThreshold2G:I

    .line 35
    :goto_0
    sget-object v2, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .end local v1    # "num":I
    :goto_1
    return-void

    .line 33
    .restart local v1    # "num":I
    :cond_0
    sput v1, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->compressThreshold3G4G:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    .end local v1    # "num":I
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
