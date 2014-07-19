.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;
.super Ljava/lang/Object;
.source "FileReadFinishMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$Mycomparator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public appCount:Ljava/lang/String;

.field public appFileName:Ljava/lang/String;

.field public calllogCount:Ljava/lang/String;

.field public calllogFileName:Ljava/lang/String;

.field public contactCount:Ljava/lang/String;

.field public contactFileName:Ljava/lang/String;

.field private mmsCount:Ljava/lang/String;

.field private mmsFileName:Ljava/lang/String;

.field public smsCount:Ljava/lang/String;

.field public smsFileName:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "0"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->time:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->time:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public getAppCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->appCount:Ljava/lang/String;

    return-object v0
.end method

.method public getAppFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->appFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getCalllogCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->calllogCount:Ljava/lang/String;

    return-object v0
.end method

.method public getCalllogFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->calllogFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getContactCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->contactCount:Ljava/lang/String;

    return-object v0
.end method

.method public getContactFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->contactFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->mmsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->mmsFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSMSCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->smsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getSMSFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->smsFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setAppCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "appCount"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->appCount:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setAppFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->appFileName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setCalllogCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "calllogCount"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->calllogCount:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setCalllogFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->calllogFileName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setContactCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactCount"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->contactCount:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setContactFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->contactFileName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setMmsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "mmsCount"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->mmsCount:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMmsFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mmsFileName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->mmsFileName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setSMSCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsCount"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->smsCount:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setSMSFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sMSFileName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->smsFileName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->time:Ljava/lang/String;

    .line 44
    return-void
.end method
