.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;
.super Ljava/lang/Object;
.source "CalllogChecksumResponse.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/CalllogProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;
    }
.end annotation


# instance fields
.field root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "bodyString"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    .line 16
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexcepted JSONException occured"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private traverse(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;)V
    .locals 9
    .param p1, "array"    # Lorg/json/JSONArray;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 87
    .end local v0    # "i":I
    .end local v3    # "len":I
    :cond_0
    return-void

    .line 69
    .restart local v0    # "i":I
    .restart local v3    # "len":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    .local v1, "itm":Lorg/json/JSONObject;
    if-nez v1, :cond_3

    .line 68
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_3
    const-string v7, "month"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "month":Ljava/lang/String;
    const-string v7, "phone"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 76
    .local v6, "phones":Lorg/json/JSONArray;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 80
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 81
    .local v5, "phoneList":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v7, v5

    if-lt v2, v7, :cond_4

    .line 84
    const/high16 v7, 0x3f800000

    add-int/lit8 v8, v0, 0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, v3

    div-float/2addr v7, v8

    invoke-interface {p2, v7, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;->onVisit(FLjava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getDiff()Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v1, "diff"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSAdd()Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v1, "s_add"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public hasCAdd()Z
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v2, "c_add"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 42
    .local v0, "cadd":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasDiff()Z
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v2, "diff"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 47
    .local v0, "diff":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasSAdd()Z
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v2, "s_add"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 37
    .local v0, "sadd":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toBytes()[B
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public traverseContactCAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;)V
    .locals 2
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v1, "c_add"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->traverse(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;)V

    .line 56
    return-void
.end method

.method public traverseContactDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;)V
    .locals 2
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v1, "diff"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->traverse(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;)V

    .line 52
    return-void
.end method
