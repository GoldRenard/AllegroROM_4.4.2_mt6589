.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;
.super Ljava/lang/Object;
.source "CalllogRestoreResponse.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/CalllogProtocol;


# instance fields
.field private calllogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;",
            ">;"
        }
    .end annotation
.end field

.field root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "bodyString"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->root:Lorg/json/JSONObject;

    .line 20
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->root:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->instanceCalllog()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->calllogList:Ljava/util/List;

    .line 25
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexcepted JSONException occured"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getDataArray()Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private instanceCalllog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->calllogList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->calllogList:Ljava/util/List;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->calllogList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getAddNum()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "add_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAllCalllog()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->getDataArray()Lorg/json/JSONArray;

    move-result-object v1

    .line 61
    .local v1, "data":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .local v5, "n":I
    :goto_0
    if-lt v3, v5, :cond_0

    .line 80
    .end local v1    # "data":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v5    # "n":I
    :goto_1
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->calllogList:Ljava/util/List;

    return-object v6

    .line 62
    .restart local v1    # "data":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v5    # "n":I
    :cond_0
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 63
    .local v4, "item":Lorg/json/JSONObject;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;-><init>()V

    .line 65
    .local v0, "calllog":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    const-string v6, "number"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    .line 66
    const-string v6, "date"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->date:Ljava/lang/Long;

    .line 67
    const-string v6, "type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->type:I

    .line 68
    const-string v6, "duration"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->duration:J

    .line 69
    const-string v6, "new"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->isNew:I

    .line 70
    const-string v6, "is_read"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->isRead:I

    .line 74
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->calllogList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "calllog":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    .end local v1    # "data":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v5    # "n":I
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getCalllogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->calllogList:Ljava/util/List;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalNumber()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "local_number"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->root:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUpdateNum()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "update_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toBytes()[B
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method
