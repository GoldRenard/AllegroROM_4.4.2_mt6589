.class public Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
.super Ljava/lang/Object;
.source "ProfilesBackupInfo.java"


# instance fields
.field private attachment:Ljava/lang/String;

.field private dataId:Ljava/lang/Long;

.field private dataValue:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private size:J

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttachment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->attachment:Ljava/lang/String;

    return-object v0
.end method

.method public getDataId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->dataId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDataValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->dataValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->size:J

    return-wide v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setAttachment(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachment"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->attachment:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDataId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "dataId"    # Ljava/lang/Long;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->dataId:Ljava/lang/Long;

    .line 29
    return-void
.end method

.method public setDataValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->dataValue:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->deviceId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->deviceModel:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->size:J

    .line 17
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->time:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProfilesBackupInfo [time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->dataId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    const-string v1, ", dataValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->dataValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attachment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->attachment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
