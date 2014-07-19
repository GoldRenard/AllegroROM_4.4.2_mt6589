.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;
.super Ljava/lang/Object;
.source "SmsRestorePhoneListResponse.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsProtocol;


# instance fields
.field root:Lorg/json/JSONObject;

.field private smsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "bodyString"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->root:Lorg/json/JSONObject;

    .line 21
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->root:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->instanceSMS()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->smsList:Ljava/util/List;

    .line 26
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
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
    .line 77
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->root:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 78
    .local v0, "data":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "data":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 81
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
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->smsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->smsList:Ljava/util/List;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->smsList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getAddNum()I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->root:Lorg/json/JSONObject;

    const-string v1, "add_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAllSms()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->smsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->getDataArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 60
    .local v0, "data":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, "n":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 73
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->smsList:Ljava/util/List;

    return-object v6

    .line 61
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 62
    .local v3, "item":Lorg/json/JSONObject;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;-><init>()V

    .line 64
    .local v5, "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;
    const-string v6, "address"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->setAddress(Ljava/lang/String;)V

    .line 65
    const-string v6, "count"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->setCount(I)V

    .line 66
    const-string v6, "body"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->setContent(Ljava/lang/String;)V

    .line 67
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->smsList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "n":I
    .end local v5    # "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unexcepted JSONException occured"

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->root:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->root:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->root:Lorg/json/JSONObject;

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
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->smsList:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateNum()I
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->root:Lorg/json/JSONObject;

    const-string v1, "update_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toBytes()[B
    .locals 3

    .prologue
    .line 86
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "val":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
