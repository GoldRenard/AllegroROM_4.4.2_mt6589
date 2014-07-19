.class public Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;
.super Ljava/lang/Object;
.source "MessageSaveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field private msgBody:Ljava/lang/String;

.field private msgHead:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 14
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;->msgHead:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;->msgBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->addUploadMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->addMsgTask(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    .line 16
    return-void
.end method

.method public setLocalConfig(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 0
    .param p1, "localConfig"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 28
    return-void
.end method

.method public setMsgBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;->msgBody:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setMsgHead(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgHead"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;->msgHead:Ljava/lang/String;

    .line 20
    return-void
.end method
