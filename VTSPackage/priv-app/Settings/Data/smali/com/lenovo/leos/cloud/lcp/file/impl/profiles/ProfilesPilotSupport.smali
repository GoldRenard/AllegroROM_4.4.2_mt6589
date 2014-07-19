.class public Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;
.super Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;
.source "ProfilesPilotSupport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private machine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lenovoId"    # Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .param p3, "realmId"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "appconfig"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;->machine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 26
    return-void
.end method

.method private buildRequestString(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;Z)Ljava/lang/String;
    .locals 4
    .param p1, "metaInfo"    # Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;
    .param p2, "hasFile"    # Z

    .prologue
    .line 53
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v0, "json":Lorg/json/JSONObject;
    const-string v2, "device_id"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/DeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v2, "device_model"

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/DeviceUtil;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v2, "data_key"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "data_category"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v2, "data_value"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v2, "have_file"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 61
    .end local v0    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "jsone":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexcepted JSONException ocurrs"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public uploadMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;Z)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;
    .locals 8
    .param p1, "metaInfo"    # Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;
    .param p2, "hasFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;->buildRequestString(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;Z)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "requestString":Ljava/lang/String;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getAppConfigServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "v1/backup"

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->realmId:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 44
    .local v3, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;->machine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v4, v3, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "responseString":Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;->createFromJson(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 46
    .end local v1    # "requestString":Ljava/lang/String;
    .end local v2    # "responseString":Ljava/lang/String;
    .end local v3    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "jsone":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexcepted JSONException ocurrs"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
