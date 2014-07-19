.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/CalllogUtils;
.super Ljava/lang/Object;
.source "CalllogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doQueryCloudCalllogNumber(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    .line 43
    .local v1, "httpMachine":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    :try_start_0
    const-string v5, "callhistory/api/total"

    invoke-static {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/CalllogUtils;->getCalllogURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "responseStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 54
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "responseStr":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :goto_0
    return v5

    .line 49
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "responseStr":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CalllogUtil \u8fd4\u56de\u7ed3\u679c\u9519\u8bef,result:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "responseStr":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :goto_1
    const/4 v5, -0x1

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getCalllogURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlPrefix"    # Ljava/lang/String;

    .prologue
    .line 27
    move-object v1, p1

    .line 28
    .local v1, "requestUrl":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 29
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    .line 30
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getCalllogServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 31
    const-string v4, "sms.cloud.lps.lenovo.com"

    .line 29
    invoke-direct {v2, v3, v1, v0, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 32
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    return-object v2
.end method
