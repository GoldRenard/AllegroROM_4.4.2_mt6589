.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
.super Ljava/lang/Object;
.source "SmsRestoreResponse.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsProtocol;


# instance fields
.field root:Lorg/json/JSONObject;

.field private smsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "bodyString"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->instanceSMS()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->smsList:Ljava/util/List;

    .line 31
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexcepted JSONException occured"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    .line 97
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 98
    .local v0, "data":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "data":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 101
    :cond_0
    return-object v0
.end method

.method private instanceSMS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->smsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->smsList:Ljava/util/List;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->smsList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getAddNum()I
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "add_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAllCount()I
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getAllSms()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getDataArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 67
    .local v0, "data":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, "n":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 87
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "n":I
    :cond_0
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->smsList:Ljava/util/List;

    return-object v6

    .line 68
    .restart local v0    # "data":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v4    # "n":I
    :cond_1
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 69
    .local v3, "item":Lorg/json/JSONObject;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;-><init>()V

    .line 70
    .local v5, "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    const-string v6, "sid"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setId(I)V

    .line 71
    const-string v6, "address"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setAddress(Ljava/lang/String;)V

    .line 72
    const-string v6, "date"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setDate(J)V

    .line 73
    const-string v6, "status"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setStatus(I)V

    .line 74
    const-string v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setType(I)V

    .line 75
    const-string v6, "subject"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setSubject(Ljava/lang/String;)V

    .line 76
    const-string v6, "body"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setBody(Ljava/lang/String;)V

    .line 77
    const-string v6, "service_center"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setServiceCenter(Ljava/lang/String;)V

    .line 78
    const-string v6, "locked"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setLocked(I)V

    .line 79
    const-string v6, "read"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setRead(I)V

    .line 80
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->smsList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "n":I
    .end local v5    # "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unexcepted JSONException occured"

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalNumber()I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "local_number"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSmsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->smsList:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateNum()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "update_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toBytes()[B
    .locals 3

    .prologue
    .line 106
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "val":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
