.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.source "PhotoChecksumResponse.java"


# instance fields
.field private cAdd:Lorg/json/JSONArray;

.field private cAddList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cDiff:Lorg/json/JSONArray;

.field private cDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cexist:Lorg/json/JSONArray;

.field private exist:Lorg/json/JSONArray;

.field private sAdd:Lorg/json/JSONArray;

.field private sDel:Lorg/json/JSONArray;

.field private sDelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sDiff:Lorg/json/JSONArray;

.field private sDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    .line 17
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    const-string v1, "s_add"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sAdd:Lorg/json/JSONArray;

    .line 18
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    const-string v1, "s_diff"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDiff:Lorg/json/JSONArray;

    .line 19
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    const-string v1, "s_del"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDel:Lorg/json/JSONArray;

    .line 20
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    const-string v1, "c_diff"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cDiff:Lorg/json/JSONArray;

    .line 21
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    const-string v1, "c_add"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cAdd:Lorg/json/JSONArray;

    .line 22
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    const-string v1, "exist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->exist:Lorg/json/JSONArray;

    .line 23
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    const-string v1, "cexist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cexist:Lorg/json/JSONArray;

    .line 24
    return-void
.end method

.method private buildJsonObjectList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 67
    :cond_0
    return-object v3

    .line 62
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 63
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 64
    .local v2, "item":Lorg/json/JSONObject;
    const-string v4, "csid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "csid":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private buildList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 86
    :cond_0
    return-object v2

    .line 82
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "item":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPortraitCAdd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cAddList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cAdd:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->buildList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cAddList:Ljava/util/List;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cAddList:Ljava/util/List;

    return-object v0
.end method

.method public getPortraitCDiff()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cDiffList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cDiff:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->buildList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cDiffList:Ljava/util/List;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cDiffList:Ljava/util/List;

    return-object v0
.end method

.method public getPortraitCExist()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cexist:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getPortraitExist()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->exist:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getPortraitSAdd()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sAdd:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getPortraitSDel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDelList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDel:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->buildList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDelList:Ljava/util/List;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDelList:Ljava/util/List;

    return-object v0
.end method

.method public getPortraitSDiff()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDiff:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getPortraitSDiffList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDiffList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDiff:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->buildJsonObjectList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDiffList:Ljava/util/List;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDiffList:Ljava/util/List;

    return-object v0
.end method

.method public isPhotoChanged()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sAdd:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDiff:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->sDel:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cDiff:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cAdd:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->exist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->cexist:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
