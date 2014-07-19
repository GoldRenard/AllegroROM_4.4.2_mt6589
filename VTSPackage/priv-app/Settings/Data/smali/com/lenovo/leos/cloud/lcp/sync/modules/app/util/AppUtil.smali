.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getAppURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlPrefix"    # Ljava/lang/String;

    .prologue
    .line 19
    move-object v1, p1

    .line 20
    .local v1, "requestUrl":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 21
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getAppServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 22
    const-string v4, "contact.cloud.lps.lenovo.com"

    .line 21
    invoke-direct {v2, v3, v1, v0, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 23
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    return-object v2
.end method

.method public static getBytes(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v2, 0x0

    .line 32
    :goto_0
    return-object v2

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "val":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
