.class Lcom/lenovo/lps/reaper/sdk/serverconfig/DeviceSendConfig;
.super Ljava/lang/Object;
.source "DeviceSendConfig.java"

# interfaces
.implements Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private isEnableSDK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "DeviceSendConfig"

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DeviceSendConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DeviceSendConfig;->isEnableSDK:Z

    return-void
.end method


# virtual methods
.method public includeCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "SDKEnable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnableSDK()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DeviceSendConfig;->isEnableSDK:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DeviceSendConfig;->isEnableSDK:Z

    .line 14
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DeviceSendConfig;->isEnableSDK:Z

    .line 19
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DeviceSendConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DeviceSendConfig;->isEnableSDK:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
