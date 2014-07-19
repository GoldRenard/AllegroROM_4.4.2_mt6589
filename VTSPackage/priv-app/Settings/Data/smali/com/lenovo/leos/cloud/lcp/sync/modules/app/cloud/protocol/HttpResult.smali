.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;
.super Ljava/lang/Object;
.source "HttpResult.java"


# static fields
.field public static final RESULT_ERROR_UNAUTHENTICATION:I = 0x5

.field public static final RESULT_FAILURE:I = 0x1

.field public static final RESULT_INSTALLING:I = 0x3

.field public static final RESULT_INSTALL_ERROR:I = 0x6

.field public static final RESULT_INSTALL_FINISH:I = 0x4

.field public static final RESULT_NONE_ENOUGH_SPACE:I = 0x2

.field public static final RESULT_SUCCESS:I


# instance fields
.field private count:I

.field private error:Ljava/lang/String;

.field private offset:I

.field private result:I

.field public upIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->upIcon:Z

    .line 16
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->offset:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->result:I

    .line 18
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->count:I

    .line 7
    return-void
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 59
    .end local p2    # "defaultValue":Z
    :cond_0
    return p2
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 81
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 74
    .end local p2    # "defaultValue":J
    :cond_0
    return-wide p2
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 67
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static isSuccessful(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;)Z
    .locals 1
    .param p0, "result"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->getResult()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->count:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->offset:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->result:I

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 46
    const-string v0, "result"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->result:I

    .line 47
    const-string v0, "error"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->error:Ljava/lang/String;

    .line 48
    const-string v0, "remain_offset"

    invoke-static {p1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->offset:I

    .line 49
    const-string v0, "count"

    invoke-static {p1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->count:I

    .line 50
    const-string v0, "up_icon"

    invoke-static {p1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->upIcon:Z

    .line 51
    return-object p0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->count:I

    .line 44
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->error:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->offset:I

    .line 38
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->result:I

    .line 26
    return-void
.end method
