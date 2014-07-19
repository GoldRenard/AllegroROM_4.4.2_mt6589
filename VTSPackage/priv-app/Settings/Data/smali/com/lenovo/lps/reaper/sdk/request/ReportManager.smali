.class public Lcom/lenovo/lps/reaper/sdk/request/ReportManager;
.super Ljava/lang/Object;
.source "ReportManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportManager"


# instance fields
.field private eventReportHandler:Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPosting()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;->eventReportHandler:Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->isReporting()Z

    move-result v0

    return v0
.end method

.method public isReportSucc()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;->eventReportHandler:Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->isReportSucc()Z

    move-result v0

    return v0
.end method

.method public postEvents([Lcom/lenovo/lps/reaper/sdk/api/Event;)I
    .locals 3
    .param p1, "events"    # [Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 31
    :cond_1
    const-string v1, "ReportManager"

    const-string v2, "start postEvents"

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;->eventReportHandler:Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->postEvents([Lcom/lenovo/lps/reaper/sdk/api/Event;)I

    move-result v0

    .line 33
    .local v0, "postLength":I
    goto :goto_0
.end method

.method public setHttpRequestHandler(Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;)V
    .locals 0
    .param p1, "httpRequestHandler"    # Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;->eventReportHandler:Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;

    .line 44
    return-void
.end method
