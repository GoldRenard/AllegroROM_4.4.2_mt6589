.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;
.super Ljava/lang/Object;
.source "CalllogBackupRequest.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/CalllogProtocol;


# instance fields
.field requestBody:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->requestBody:Lorg/json/JSONObject;

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "device_id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "pid"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getDataArray()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 68
    .local v0, "data":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "data":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 70
    .restart local v0    # "data":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addCalllog(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)V
    .locals 6
    .param p1, "calllog"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    .prologue
    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->getDataArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 47
    .local v0, "data":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v2, "item":Lorg/json/JSONObject;
    const-string v3, "client_id"

    iget v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->id:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    const-string v3, "number"

    iget-object v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v3, "date"

    iget-object v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->date:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v3, "cached_name"

    iget-object v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->cachedName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v3, "cached_number_label"

    iget-object v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->cachedNumberLabel:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v3, "cached_number_type"

    iget v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->cachedNumberType:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string v3, "content_type"

    iget-object v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v3, "default_sort_order"

    iget-object v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->defaultSortOrder:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v3, "duration"

    iget-wide v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->duration:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    const-string v3, "is_read"

    iget v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->isRead:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v3, "new"

    iget v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->isNew:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string v3, "type"

    iget v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->type:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 61
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "item":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public hasBackupData()Z
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putCatogaryToJSONroot(Ljava/lang/String;)V
    .locals 2
    .param p1, "catogary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v1, "local_catogary"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    return-void
.end method

.method public putLocalTotalNumber(I)V
    .locals 2
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v1, "local_number"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    return-void
.end method

.method public putTimeToJSONroot(J)V
    .locals 2
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v1, "local_time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 79
    return-void
.end method

.method public toBytes()[B
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "val":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->requestBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
