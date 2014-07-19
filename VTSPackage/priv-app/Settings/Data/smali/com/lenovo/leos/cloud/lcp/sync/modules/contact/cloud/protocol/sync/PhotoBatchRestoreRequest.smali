.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreRequest;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.source "PhotoBatchRestoreRequest.java"


# instance fields
.field psid:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public addPortrait(Ljava/lang/String;)V
    .locals 1
    .param p1, "psidStr"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreRequest;->checkInitPortraitReq()V

    .line 27
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreRequest;->psid:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28
    return-void
.end method

.method public checkInitPortraitReq()V
    .locals 4

    .prologue
    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreRequest;->psid:Lorg/json/JSONArray;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreRequest;->psid:Lorg/json/JSONArray;

    .line 18
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    const-string v2, "pt"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreRequest;->psid:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public clearPortraits()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreRequest;->psid:Lorg/json/JSONArray;

    .line 45
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreRequest;->checkInitPortraitReq()V

    .line 46
    return-void
.end method

.method public getPortraitSize()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreRequest;->psid:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreRequest;->psid:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoBatchRestoreRequest;->psid:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
