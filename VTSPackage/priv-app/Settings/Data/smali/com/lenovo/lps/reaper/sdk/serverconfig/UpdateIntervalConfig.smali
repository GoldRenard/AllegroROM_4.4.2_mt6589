.class Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;
.super Ljava/lang/Object;
.source "UpdateIntervalConfig.java"

# interfaces
.implements Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private interval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "UpdateIntervalConfig"

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x168

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;->interval:I

    return-void
.end method


# virtual methods
.method public getUpdateInterval()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;->interval:I

    return v0
.end method

.method public includeCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "UpdateInterval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x168

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;->interval:I

    .line 14
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 19
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;->interval:I

    .line 20
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;->interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
