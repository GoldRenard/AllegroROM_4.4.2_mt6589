.class Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;
.super Ljava/lang/Object;
.source "DownloadAppMsg.java"


# instance fields
.field private listener:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

.field private msgBody:Ljava/lang/String;

.field private msgHead:Ljava/lang/String;

.field private msgId:I

.field private msgType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;
    .param p2, "msgId"    # I
    .param p3, "msgHead"    # Ljava/lang/String;
    .param p4, "msgBody"    # Ljava/lang/String;
    .param p5, "msgType"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;->listener:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    .line 14
    iput p2, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;->msgId:I

    .line 15
    iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;->msgHead:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;->msgBody:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;->msgType:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public notifyApp()V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;->listener:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;->listener:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;->msgType:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;->msgHead:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;->msgBody:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method
