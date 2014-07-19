.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactUtil;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildRawContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .locals 2
    .param p0, "f"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .prologue
    .line 25
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;-><init>()V

    .line 26
    .local v0, "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->cid:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    .line 27
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->stared:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    .line 28
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->sid:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    .line 29
    return-object v0
.end method

.method public static doQueryCloudContactNumber(Landroid/content/Context;)I
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 56
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    .line 58
    .local v1, "httpMachine":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    :try_start_0
    const-string v5, "v4/count.action"

    invoke-static {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactUtil;->getURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "responseStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 61
    .local v4, "result":I
    if-nez v4, :cond_0

    .line 62
    const-string v5, "count"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 69
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "responseStr":Ljava/lang/String;
    .end local v4    # "result":I
    :goto_0
    return v5

    .line 64
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "responseStr":Ljava/lang/String;
    .restart local v4    # "result":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ContactUtil \u8fd4\u56de\u7ed3\u679c\u9519\u8bef,result:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "responseStr":Ljava/lang/String;
    .end local v4    # "result":I
    :goto_1
    const/4 v5, -0x1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static declared-synchronized getURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "buzzURL"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactUtil;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?gzip=true"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "requestUrl":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 43
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    .line 44
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getContactServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 45
    const-string v5, "contact.cloud.lps.lenovo.com"

    .line 43
    invoke-direct {v2, v3, v1, v0, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    monitor-exit v4

    return-object v2

    .line 41
    .end local v0    # "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .end local v1    # "requestUrl":Ljava/lang/String;
    .end local v2    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
