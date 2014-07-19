.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;
.super Ljava/lang/Object;
.source "BaseStep.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/SetpSync;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/SetpSync",
        "<TC;TS;TR;>;",
        "Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field private httpProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

.field protected task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

.field protected username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "task"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "username"    # Ljava/lang/String;

    .prologue
    .line 24
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep<TC;TS;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .line 26
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->username:Ljava/lang/String;

    .line 28
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    .end local p1    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->httpProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    .line 29
    return-void
.end method


# virtual methods
.method protected final buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    .locals 5
    .param p1, "buzzURL"    # Ljava/lang/String;

    .prologue
    .line 32
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep<TC;TS;TR;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?gzip=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "requestUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 34
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    .line 35
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getCalendarsServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 36
    const-string v4, "contact.cloud.lps.lenovo.com"

    .line 34
    invoke-direct {v2, v3, v1, v0, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 38
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    return-object v2
.end method

.method protected getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B
    .locals 1
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep<TC;TS;TR;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->httpProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;->GETB(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B

    move-result-object v0

    return-object v0
.end method

.method protected getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;
    .locals 1
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep<TC;TS;TR;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->httpProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;->GET(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onStepProgress(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "cur"    # I
    .param p2, "total"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    .line 47
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep<TC;TS;TR;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->httpProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;->onStepProgress(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method protected postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;
    .locals 1
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # [B
    .param p3, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep<TC;TS;TR;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->httpProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;->POST(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProgressStatus(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 42
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep<TC;TS;TR;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->httpProvider:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;->setProgressStatus(I)V

    .line 43
    return-void
.end method
