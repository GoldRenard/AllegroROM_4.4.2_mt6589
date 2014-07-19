.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumMocker;
.super Ljava/lang/Object;
.source "ContactChecksumMocker.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/IChecksumMocker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;
    .locals 10
    .param p1, "localChange"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 37
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v6, "respRoot":Lorg/json/JSONObject;
    const-string v8, "result"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v5, "jsonContact":Lorg/json/JSONObject;
    const-string v8, "ct"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-object v8, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->caddList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 44
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 45
    .local v2, "jCAdd":Lorg/json/JSONArray;
    const-string v8, "c_add"

    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object v8, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->caddList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 51
    .end local v2    # "jCAdd":Lorg/json/JSONArray;
    :cond_0
    iget-object v8, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->delList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 52
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 53
    .local v3, "jCDelete":Lorg/json/JSONArray;
    const-string v8, "c_del"

    invoke-virtual {v5, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v8, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->delList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 59
    .end local v3    # "jCDelete":Lorg/json/JSONArray;
    :cond_1
    iget-object v8, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->diffList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 60
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 61
    .local v4, "jCDiff":Lorg/json/JSONArray;
    const-string v8, "c_diff"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    iget-object v8, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->diffList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 67
    .end local v4    # "jCDiff":Lorg/json/JSONArray;
    :cond_2
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;-><init>(Ljava/lang/String;)V

    return-object v8

    .line 46
    .restart local v2    # "jCAdd":Lorg/json/JSONArray;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 47
    .local v0, "cid":Ljava/lang/Integer;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    .end local v0    # "cid":Ljava/lang/Integer;
    .end local v2    # "jCAdd":Lorg/json/JSONArray;
    .end local v5    # "jsonContact":Lorg/json/JSONObject;
    .end local v6    # "respRoot":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Lorg/json/JSONException;
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v8, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 54
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "jCDelete":Lorg/json/JSONArray;
    .restart local v5    # "jsonContact":Lorg/json/JSONObject;
    .restart local v6    # "respRoot":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 55
    .local v7, "sid":Ljava/lang/Long;
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 62
    .end local v3    # "jCDelete":Lorg/json/JSONArray;
    .end local v7    # "sid":Ljava/lang/Long;
    .restart local v4    # "jCDiff":Lorg/json/JSONArray;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 63
    .restart local v7    # "sid":Ljava/lang/Long;
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
