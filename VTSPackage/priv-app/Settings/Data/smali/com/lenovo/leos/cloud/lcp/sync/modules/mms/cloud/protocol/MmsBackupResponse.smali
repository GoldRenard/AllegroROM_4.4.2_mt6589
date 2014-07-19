.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsProtocol;
.source "MmsBackupResponse.java"


# instance fields
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
    .line 10
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsProtocol;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupResponse;->root:Lorg/json/JSONObject;

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupResponse;->root:Lorg/json/JSONObject;

    .line 12
    return-void
.end method


# virtual methods
.method public getAddNum()I
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupResponse;->root:Lorg/json/JSONObject;

    const-string v1, "add_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupResponse;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupResponse;->root:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupResponse;->root:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupResponse;->root:Lorg/json/JSONObject;

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
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
