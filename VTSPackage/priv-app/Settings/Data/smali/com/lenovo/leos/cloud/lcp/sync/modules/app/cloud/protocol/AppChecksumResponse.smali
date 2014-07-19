.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AbsResultJson;
.source "AppChecksumResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bodyString"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AbsResultJson;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method private traverse(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 5
    .param p1, "array"    # Lorg/json/JSONArray;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 46
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    return-void

    .line 39
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "pkname":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_2
    const/high16 v3, 0x3f800000

    add-int/lit8 v4, v0, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-interface {p2, v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;->onVisitPkname(FLjava/lang/String;)V

    goto :goto_1
.end method

.method private traverseBackuped(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 5
    .param p1, "array"    # Lorg/json/JSONArray;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 34
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    return-void

    .line 27
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "pkname":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_2
    const/high16 v3, 0x3f800000

    add-int/lit8 v4, v0, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    const-string v4, ""

    invoke-interface {p2, v3, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;->onVisitBackuped(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public traverseAppBackuped(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 2
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AbsResultJson;->root:Lorg/json/JSONObject;

    const-string v1, "backuped"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;->traverseBackuped(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;)V

    .line 21
    return-void
.end method

.method public traverseAppExist(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 2
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AbsResultJson;->root:Lorg/json/JSONObject;

    const-string v1, "exist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;->traverse(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;)V

    .line 18
    return-void
.end method

.method public traverseAppNotExist(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 2
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AbsResultJson;->root:Lorg/json/JSONObject;

    const-string v1, "not_exist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;->traverse(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;)V

    .line 14
    return-void
.end method
