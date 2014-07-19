.class public Lcom/lenovo/lsf/account/model/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private deviceID:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private verified:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lsf/account/model/UserInfo;->verified:Z

    return-void
.end method


# virtual methods
.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/lsf/account/model/UserInfo;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lenovo/lsf/account/model/UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/lsf/account/model/UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/model/UserInfo;->verified:Z

    return v0
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/lsf/account/model/UserInfo;->deviceID:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lenovo/lsf/account/model/UserInfo;->userId:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/lsf/account/model/UserInfo;->userName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setVerified(Z)V
    .locals 0
    .param p1, "verified"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/lenovo/lsf/account/model/UserInfo;->verified:Z

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/lsf/account/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , Username = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/lsf/account/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , isVerified = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/lsf/account/model/UserInfo;->isVerified()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/lsf/account/model/UserInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
