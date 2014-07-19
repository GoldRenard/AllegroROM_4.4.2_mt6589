.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.source "PhotoChecksumRequest.java"


# instance fields
.field cpt:Lorg/json/JSONArray;

.field pt:Lorg/json/JSONArray;

.field root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->root:Lorg/json/JSONObject;

    .line 13
    return-void
.end method


# virtual methods
.method public addClientPortrait(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/Integer;
    .param p2, "adler"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->checkInitPortraitReq()V

    .line 57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "cid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v2, "adler"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->cpt:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addPortrait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "adler"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->checkInitPortraitReq()V

    .line 43
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "sid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v2, "adler"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->pt:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public checkInitContactGroupReq()V
    .locals 4

    .prologue
    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->cpt:Lorg/json/JSONArray;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->cpt:Lorg/json/JSONArray;

    .line 21
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->root:Lorg/json/JSONObject;

    const-string v2, "cpt"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->cpt:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public checkInitPortraitReq()V
    .locals 4

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->pt:Lorg/json/JSONArray;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->pt:Lorg/json/JSONArray;

    .line 32
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->root:Lorg/json/JSONObject;

    const-string v2, "pt"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->pt:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setVersion(Ljava/lang/Long;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/Long;

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->root:Lorg/json/JSONObject;

    const-string v2, "version"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->root:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
