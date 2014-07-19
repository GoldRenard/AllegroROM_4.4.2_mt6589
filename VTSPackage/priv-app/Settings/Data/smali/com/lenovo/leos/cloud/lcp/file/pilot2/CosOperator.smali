.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;
.super Ljava/lang/Object;
.source "CosOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;,
        Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BatchWriteObjectRequestIntercepter;,
        Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final KEY_BUCKET_NAME:Ljava/lang/String; = "bucket_name"

.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final PART_LENGTH:J = 0x500000L

.field private static final PART_SEGMENT_LENGTH:J = 0x280000L

.field private static final TAG:Ljava/lang/String; = "CosOperator"


# instance fields
.field private config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

.field private connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

.field private httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->$assertionsDisabled:Z

    .line 119
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;)V
    .locals 1
    .param p1, "config"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    .param p2, "connector"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 56
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_0
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    .line 60
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    .line 61
    return-void
.end method

.method private generateKeyList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 302
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "keys"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private makeBatchCreateObjectURIRoller(Ljava/lang/String;I)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/v2/bucket/ops/batch-create/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?object_count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "subffix":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getCosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v1
.end method

.method private makeBatchGetObjectURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/v2/object/ops/batch-download/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "subffix":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getIocosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v1
.end method

.method private makeBatchMultipartEntity(Ljava/util/List;Ljava/util/List;)Lorg/apache/http/entity/mime/MultipartEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            ">;)",
            "Lorg/apache/http/entity/mime/MultipartEntity;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "cosList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;>;"
    .local p2, "pipeList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;>;"
    new-instance v2, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 379
    .local v2, "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 387
    return-object v2

    .line 380
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    .line 381
    .local v1, "cosObject":Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    .line 383
    .local v4, "inputPipe":Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/lang/String;)V

    .line 384
    .local v0, "contentBody":Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 379
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private makeBatchPutObjectURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/v2/object/ops/batch-upload/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "subffix":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getIocosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v1
.end method

.method private makeCosList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, "responseJson":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "cosList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 115
    return-object v1

    .line 105
    :cond_0
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    .local v0, "cosJson":Lorg/json/JSONObject;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;-><init>()V

    .line 108
    .local v2, "cosObject":Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    const-string v5, "bucket_name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setBucketName(Ljava/lang/String;)V

    .line 109
    const-string v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setKey(Ljava/lang/String;)V

    .line 110
    const-string v5, "location"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setLocation(Ljava/lang/String;)V

    .line 112
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private makeCosObject(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    .locals 3
    .param p1, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "responseJson":Lorg/json/JSONObject;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;-><init>()V

    .line 94
    .local v0, "cosObject":Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    const-string v2, "bucket_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setBucketName(Ljava/lang/String;)V

    .line 95
    const-string v2, "key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setKey(Ljava/lang/String;)V

    .line 96
    const-string v2, "location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setLocation(Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method private makeCreateObjectURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/v2/bucket/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "subffix":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getCosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v1
.end method

.method private makePutObjectURIRoller(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 7
    .param p1, "cosObject"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    .prologue
    .line 411
    const-string v1, ""

    .line 412
    .local v1, "subffix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getAppServerCallbackData()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "queryString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    :cond_0
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getLocation()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v2
.end method

.method private processSingleFile(Lorg/json/JSONObject;Ljava/io/InputStream;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V
    .locals 4
    .param p1, "meta"    # Lorg/json/JSONObject;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "visitor"    # Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 362
    const-string v3, "key"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "objectKey":Ljava/lang/String;
    const-string v3, "length"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 365
    .local v0, "length":I
    const/4 v3, 0x0

    invoke-static {p2, v0, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;IZ)[B

    move-result-object v2

    .line 367
    .local v2, "singleBytes":[B
    invoke-interface {p3, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;->onVisit(Ljava/lang/String;[B)V

    .line 368
    return-void
.end method

.method private readResponse(Lorg/apache/http/HttpResponse;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V
    .locals 18
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p3, "visitor"    # Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v12, 0x0

    .line 321
    .local v12, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v12

    .line 322
    const-string v2, "X-Lenovows-OSS-Meta-Length"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v10

    .line 324
    .local v10, "headers":[Lorg/apache/http/Header;
    if-eqz v10, :cond_0

    array-length v2, v10

    if-lez v2, :cond_0

    .line 325
    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 327
    .local v9, "header":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;IZ)[B

    move-result-object v16

    .line 329
    .local v16, "responseByte":[B
    new-instance v17, Ljava/lang/String;

    const-string v2, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 331
    .local v17, "responseString":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONArray;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 332
    .local v13, "jmetas":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 333
    .local v15, "photoSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-lt v11, v15, :cond_1

    .line 347
    .end local v9    # "header":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "jmetas":Lorg/json/JSONArray;
    .end local v15    # "photoSize":I
    .end local v16    # "responseByte":[B
    .end local v17    # "responseString":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 348
    aput-object v12, v2, v3

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 350
    return-void

    .line 334
    .restart local v9    # "header":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v13    # "jmetas":Lorg/json/JSONArray;
    .restart local v15    # "photoSize":I
    .restart local v16    # "responseByte":[B
    .restart local v17    # "responseString":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 335
    .local v14, "meta":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v14, v12, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->processSingleFile(Lorg/json/JSONObject;Ljava/io/InputStream;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V

    .line 337
    int-to-long v3, v11

    int-to-long v5, v15

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v7}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 341
    .end local v9    # "header":Ljava/lang/String;
    .end local v10    # "headers":[Lorg/apache/http/Header;
    .end local v11    # "i":I
    .end local v13    # "jmetas":Lorg/json/JSONArray;
    .end local v14    # "meta":Lorg/json/JSONObject;
    .end local v15    # "photoSize":I
    .end local v16    # "responseByte":[B
    .end local v17    # "responseString":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 342
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 343
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v2, v8}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    .line 348
    aput-object v12, v3, v4

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 349
    throw v2

    .line 344
    :catch_1
    move-exception v8

    .line 345
    .local v8, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 346
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v2, v8}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private sendOnePart(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;IJ)V
    .locals 13
    .param p1, "cosObject"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    .param p2, "inputPipe"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
    .param p3, "partNumber"    # I
    .param p4, "totalLeft"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 162
    const-wide/32 v0, 0x500000

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    const/4 v9, 0x1

    .line 163
    .local v9, "isLastPart":Z
    :goto_0
    if-eqz v9, :cond_1

    move-wide/from16 v11, p4

    .line 164
    .local v11, "partLeft":J
    :goto_1
    add-int/lit8 v0, p3, -0x1

    int-to-long v0, v0

    const-wide/32 v2, 0x500000

    mul-long v4, v0, v2

    .line 166
    .local v4, "segmentOffset":J
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-gtz v0, :cond_2

    .line 174
    return-void

    .line 162
    .end local v4    # "segmentOffset":J
    .end local v9    # "isLastPart":Z
    .end local v11    # "partLeft":J
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 163
    .restart local v9    # "isLastPart":Z
    :cond_1
    const-wide/32 v11, 0x500000

    goto :goto_1

    .line 167
    .restart local v4    # "segmentOffset":J
    .restart local v11    # "partLeft":J
    :cond_2
    const-wide/32 v0, 0x280000

    cmp-long v0, v11, v0

    if-gtz v0, :cond_3

    const/4 v10, 0x1

    .line 168
    .local v10, "lastSegementInPart":Z
    :goto_3
    if-eqz v10, :cond_4

    move-wide v6, v11

    .line 170
    .local v6, "segmentLength":J
    :goto_4
    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    const/4 v8, 0x1

    :goto_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->sendOneSegement(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;IJJZ)V

    .line 171
    sub-long/2addr v11, v6

    .line 172
    add-long/2addr v4, v6

    goto :goto_2

    .line 167
    .end local v6    # "segmentLength":J
    .end local v10    # "lastSegementInPart":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 168
    .restart local v10    # "lastSegementInPart":Z
    :cond_4
    const-wide/32 v6, 0x280000

    goto :goto_4

    .line 170
    .restart local v6    # "segmentLength":J
    :cond_5
    const/4 v8, 0x0

    goto :goto_5
.end method

.method private sendOneSegement(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;IJJZ)V
    .locals 12
    .param p1, "cosObject"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    .param p2, "inputPipe"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
    .param p3, "partNumber"    # I
    .param p4, "offset"    # J
    .param p6, "segmentLength"    # J
    .param p8, "isLastSegment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->makePutObjectURIRoller(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v11

    .line 199
    .local v11, "writeObjectURIRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->getSessionId()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "sessionId":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    int-to-long v4, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;JJJ)V

    .line 201
    .local v1, "intercepter":Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;
    move/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->setCommit(Z)V

    .line 202
    invoke-interface {p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->contentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->setContentType(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v2, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 205
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;

    move-object v5, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v4 .. v9}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V

    invoke-virtual {v2, v11, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->putForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "response":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 207
    invoke-direct {p0, v10}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->verifyUploadSegemetResponse(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private updateCosObjectState(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "cosList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;>;"
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->verifyUploadSegemetResponse(Ljava/lang/String;)V

    .line 258
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "success_keys"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "successKeys":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 266
    return-void

    .line 261
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    .line 262
    .local v0, "cosObject":Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setWritten(Z)V

    goto :goto_0
.end method

.method private verifyUploadSegemetResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    if-nez p1, :cond_1

    const-string v0, ""

    .line 212
    .local v0, "res":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 213
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 214
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Network error, check if wifi is authenticated"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v0    # "res":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    .restart local v0    # "res":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public batchCreateObject(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->getSessionId()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "sessionId":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-direct {v2, v5, v4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;)V

    .line 81
    .local v2, "intercepter":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->makeBatchCreateObjectURIRoller(Ljava/lang/String;I)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v0

    .line 82
    .local v0, "createURIRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v5, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 83
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "responseBody":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 85
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->makeCosList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 86
    .end local v0    # "createURIRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .end local v2    # "intercepter":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;
    .end local v3    # "responseBody":Ljava/lang/String;
    .end local v4    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    const-string v6, "Server return non-JSON format content"

    invoke-direct {v5, v6, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method public batchDownload(Ljava/util/List;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V
    .locals 10
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p4, "visitor"    # Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->makeBatchGetObjectURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v0

    .line 280
    .local v0, "getObjectURIRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->getSessionId()Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, "sessionId":Ljava/lang/String;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-direct {v4, v7, v6}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;)V

    .line 283
    .local v4, "intercepter":Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v7, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 285
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    new-instance v8, Lorg/apache/http/entity/StringEntity;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->generateKeyList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v8}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 286
    .local v5, "response":Lorg/apache/http/HttpResponse;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 288
    invoke-direct {p0, v5, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->readResponse(Lorg/apache/http/HttpResponse;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException; {:try_start_0 .. :try_end_0} :catch_2

    .line 296
    return-void

    .line 289
    .end local v0    # "getObjectURIRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .end local v4    # "intercepter":Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 290
    .local v1, "he401":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {v7, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 291
    .end local v1    # "he401":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;
    :catch_1
    move-exception v2

    .line 292
    .local v2, "he403":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {v7, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 293
    .end local v2    # "he403":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;
    :catch_2
    move-exception v3

    .line 294
    .local v3, "he50x":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException;
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v7, v3}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public batchWriteObject(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p1, "bucket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
        }
    .end annotation

    .prologue
    .line 227
    .local p2, "cosList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;>;"
    .local p3, "pipeList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 228
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "cosList Size must equal to pipeList Size"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 232
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->makeBatchPutObjectURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v8

    .line 233
    .local v8, "writeObjectURIRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-virtual {v9}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->getSessionId()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "sessionId":Ljava/lang/String;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BatchWriteObjectRequestIntercepter;

    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-direct {v4, v9, v7}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BatchWriteObjectRequestIntercepter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;)V

    .line 236
    .local v4, "intercepter":Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BatchWriteObjectRequestIntercepter;
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v9, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 238
    invoke-direct {p0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->makeBatchMultipartEntity(Ljava/util/List;Ljava/util/List;)Lorg/apache/http/entity/mime/MultipartEntity;

    move-result-object v0

    .line 240
    .local v0, "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v9, v8, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "response":Ljava/lang/String;
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 243
    invoke-direct {p0, v6, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->updateCosObjectState(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 253
    return-void

    .line 244
    .end local v0    # "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v4    # "intercepter":Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BatchWriteObjectRequestIntercepter;
    .end local v6    # "response":Ljava/lang/String;
    .end local v7    # "sessionId":Ljava/lang/String;
    .end local v8    # "writeObjectURIRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "he401":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {v9, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 246
    .end local v1    # "he401":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;
    :catch_1
    move-exception v2

    .line 247
    .local v2, "he403":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {v9, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 248
    .end local v2    # "he403":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;
    :catch_2
    move-exception v3

    .line 249
    .local v3, "he50x":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException;
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v9, v3}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 250
    .end local v3    # "he50x":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException;
    :catch_3
    move-exception v5

    .line 251
    .local v5, "jsone":Lorg/json/JSONException;
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v9, v5}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v9
.end method

.method public createObject(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->getSessionId()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "sessionId":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-direct {v2, v5, v4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;)V

    .line 67
    .local v2, "intercepter":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->makeCreateObjectURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v0

    .line 68
    .local v0, "createURIRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v5, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 69
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "responseBody":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 71
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->makeCosObject(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 72
    .end local v0    # "createURIRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .end local v2    # "intercepter":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;
    .end local v3    # "responseBody":Ljava/lang/String;
    .end local v4    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    const-string v6, "Server return non-JSON format content"

    invoke-direct {v5, v6, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method public getConfig()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    return-object v0
.end method

.method public readObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)V
    .locals 0
    .param p1, "cosObject"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    .param p2, "outputPipe"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;

    .prologue
    .line 398
    return-void
.end method

.method public setConfig(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;)V
    .locals 3
    .param p1, "config"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    .prologue
    .line 430
    sget-boolean v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->clone()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_1
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const-string v1, "CosOperator"

    const-string v2, "Config CloneNotSupportedException, set itself"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    goto :goto_0
.end method

.method public writeObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;)V
    .locals 13
    .param p1, "cosObject"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    .param p2, "inputPipe"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-interface {p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->contentLength()J

    move-result-wide v11

    .line 132
    .local v11, "totalLength":J
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-gtz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pipeline length() must >0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    move-wide v4, v11

    .line 138
    .local v4, "totalLeft":J
    const/4 v3, 0x0

    .line 139
    .local v3, "partNumber":I
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_1

    .line 145
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setWritten(Z)V

    .line 157
    return-void

    .line 140
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 141
    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->sendOnePart(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;IJ)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus405Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 142
    const-wide/32 v0, 0x500000

    sub-long/2addr v4, v0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v6

    .line 147
    .local v6, "he401":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {v0, v6}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 148
    .end local v6    # "he401":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;
    :catch_1
    move-exception v7

    .line 149
    .local v7, "he403":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {v0, v7}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 150
    .end local v7    # "he403":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;
    :catch_2
    move-exception v8

    .line 151
    .local v8, "he405":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus405Exception;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    const/4 v1, 0x5

    invoke-direct {v0, v8, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;I)V

    throw v0

    .line 152
    .end local v8    # "he405":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus405Exception;
    :catch_3
    move-exception v9

    .line 153
    .local v9, "he50x":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v0, v9}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 154
    .end local v9    # "he50x":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException;
    :catch_4
    move-exception v10

    .line 155
    .local v10, "je":Lorg/json/JSONException;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v0, v10}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
