.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsProtocol;
.source "ChecksumRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChecksumRequest"


# instance fields
.field requestBody:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "pid"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsProtocol;-><init>()V

    .line 14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->requestBody:Lorg/json/JSONObject;

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "device_id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "pid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->getDataArray()Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "ChecksumRequest"

    const-string v2, "Unexcepted JSONException ocurr!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getDataArray()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 47
    .local v0, "data":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "data":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 49
    .restart local v0    # "data":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addMmsData(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V
    .locals 5
    .param p1, "entity"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v1, "oneData":Lorg/json/JSONObject;
    const-string v2, "address"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v2, "date"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getDate()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 30
    const-string v2, "type"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    const-string v2, "locked"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getLocked()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->getDataArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    .local v0, "data":Lorg/json/JSONArray;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 34
    return-void
.end method

.method public putData(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "data"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->requestBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
