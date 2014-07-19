.class Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;
.super Ljava/lang/Object;
.source "UserConfig.java"


# instance fields
.field private userId:Ljava/lang/String;

.field private userIdClass:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;->userIdClass:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method public setUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userIdClass"    # Ljava/lang/String;

    .prologue
    .line 20
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "userId":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;->userId:Ljava/lang/String;

    .line 21
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "userIdClass":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;->userIdClass:Ljava/lang/String;

    .line 22
    return-void
.end method
