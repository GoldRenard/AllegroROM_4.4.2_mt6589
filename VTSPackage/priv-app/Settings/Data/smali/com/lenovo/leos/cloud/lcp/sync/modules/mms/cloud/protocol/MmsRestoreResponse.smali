.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsProtocol;
.source "MmsRestoreResponse.java"


# instance fields
.field private mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

.field root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "bodyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsProtocol;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    .line 15
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 16
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMms()Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v2, "address"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->address:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v2, "date"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->date:J

    .line 30
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->type:I

    .line 31
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v2, "read"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->read:I

    .line 32
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v2, "subject"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->subject:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v2, "locked"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->locked:I

    .line 34
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v2, "related"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->related:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v2, "abst"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->abst:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v2, "message_class"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->messageClass:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v2, "message_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->messageType:I

    .line 38
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->mms:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    return-object v0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public toBytes()[B
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
