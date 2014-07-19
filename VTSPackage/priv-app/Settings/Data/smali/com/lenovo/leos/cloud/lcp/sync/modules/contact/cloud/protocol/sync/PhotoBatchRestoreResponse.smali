.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.source "PhotoBatchRestoreResponse.java"


# instance fields
.field private nfsPtArray:Lorg/json/JSONArray;

.field private pilotArray:Lorg/json/JSONArray;

.field private root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 17
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreResponse;->root:Lorg/json/JSONObject;

    .line 18
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 21
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>()V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>()V

    throw v2

    .line 24
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "result":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v3, "nfs_pt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreResponse;->nfsPtArray:Lorg/json/JSONArray;

    .line 25
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v3, "object_key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreResponse;->pilotArray:Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    return-void
.end method


# virtual methods
.method public getNfsArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreResponse;->nfsPtArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getPilotArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreResponse;->pilotArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
