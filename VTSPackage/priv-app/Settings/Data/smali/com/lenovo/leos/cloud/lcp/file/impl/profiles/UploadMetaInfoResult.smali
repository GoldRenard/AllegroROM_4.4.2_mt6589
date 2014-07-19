.class Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;
.super Ljava/lang/Object;
.source "UploadMetaInfoResult.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/impl/FileResult;


# instance fields
.field private dataId:I

.field private errMsg:Ljava/lang/String;

.field private result:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "dataId"    # I
    .param p3, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;->result:I

    .line 15
    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;->dataId:I

    .line 16
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;->errMsg:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static createFromJson(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;
    .locals 5
    .param p0, "responseString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "json":Lorg/json/JSONObject;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "data_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "error"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;-><init>(IILjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getDataId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;->dataId:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;->result:I

    return v0
.end method
