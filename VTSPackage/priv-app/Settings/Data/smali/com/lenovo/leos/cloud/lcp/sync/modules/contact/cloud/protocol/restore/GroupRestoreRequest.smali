.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.source "GroupRestoreRequest.java"


# instance fields
.field requestBody:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->requestBody:Lorg/json/JSONObject;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string v0, "-1"

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "pid"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->requestBody:Lorg/json/JSONObject;

    .line 13
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->setDeviceId(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->setPid(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private getGroupArray()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "cg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 56
    .local v0, "groups":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "groups":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .restart local v0    # "groups":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "cg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_0
    return-object v0
.end method

.method private setDeviceId(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "device_id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setPid(Ljava/lang/String;)V
    .locals 3
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;)V
    .locals 3
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->getGroupArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getRestoreGroupSize()I
    .locals 2

    .prologue
    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->getGroupArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 50
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->requestBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
