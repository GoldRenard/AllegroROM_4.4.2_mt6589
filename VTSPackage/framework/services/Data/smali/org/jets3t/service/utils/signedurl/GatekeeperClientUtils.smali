.class public Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;
.super Ljava/lang/Object;
.source "GatekeeperClientUtils.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final connectionTimeout:I

.field private credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

.field private gatekeeperUrl:Ljava/lang/String;

.field private httpClientGatekeeper:Lorg/apache/http/client/HttpClient;

.field private final maxRetryCount:I

.field private priorFailureException:Ljava/lang/Exception;

.field private final userAgentDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILorg/apache/http/client/CredentialsProvider;)V
    .locals 1
    .param p1, "gatekeeperUrl"    # Ljava/lang/String;
    .param p2, "userAgentDescription"    # Ljava/lang/String;
    .param p3, "maxRetryCount"    # I
    .param p4, "connectionTimeoutMS"    # I
    .param p5, "credentialsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->httpClientGatekeeper:Lorg/apache/http/client/HttpClient;

    .line 71
    iput-object v0, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->priorFailureException:Ljava/lang/Exception;

    .line 73
    iput-object v0, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->gatekeeperUrl:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    .line 90
    iput-object p1, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->gatekeeperUrl:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->userAgentDescription:Ljava/lang/String;

    .line 92
    iput p3, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->maxRetryCount:I

    .line 93
    iput p4, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->connectionTimeout:I

    .line 94
    iput-object p5, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    .line 95
    return-void
.end method

.method private initHttpConnection()Lorg/apache/http/client/HttpClient;
    .locals 5

    .prologue
    .line 103
    invoke-static {}, Lorg/jets3t/service/utils/RestUtils;->createDefaultHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 104
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    iget-object v2, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->userAgentDescription:Ljava/lang/String;

    invoke-static {v2}, Lorg/jets3t/service/utils/ServiceUtils;->getUserAgentDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 109
    iget v2, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->connectionTimeout:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    iget v2, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->connectionTimeout:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 113
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 115
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 117
    .local v0, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/jets3t/service/utils/RestUtils$JetS3tRetryHandler;

    iget v3, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->maxRetryCount:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/jets3t/service/utils/RestUtils$JetS3tRetryHandler;-><init>(ILorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 122
    iget-object v2, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V

    .line 124
    return-object v0
.end method


# virtual methods
.method public buildS3ObjectsFromSignatureRequests([Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;)[Lorg/jets3t/service/model/S3Object;
    .locals 4
    .param p1, "srs"    # [Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;

    .prologue
    .line 280
    array-length v2, p1

    new-array v1, v2, [Lorg/jets3t/service/model/S3Object;

    .line 281
    .local v1, "objects":[Lorg/jets3t/service/model/S3Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 282
    new-instance v2, Lorg/jets3t/service/model/S3Object;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jets3t/service/model/S3Object;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 283
    aget-object v2, v1, v0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->getObjectMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jets3t/service/model/S3Object;->addAllMetadata(Ljava/util/Map;)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return-object v1
.end method

.method public getGatekeeperUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->gatekeeperUrl:Ljava/lang/String;

    return-object v0
.end method

.method public requestActionThroughGatekeeper(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/S3Object;Ljava/util/Map;)Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;
    .locals 27
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objects"    # [Lorg/jets3t/service/model/S3Object;
    .param p4, "applicationPropertiesMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v10, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;

    invoke-direct {v10}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;-><init>()V

    .line 145
    .local v10, "gatekeeperMessage":Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->addApplicationProperties(Ljava/util/Map;)V

    .line 146
    const-string v24, "clientVersionId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->userAgentDescription:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->addApplicationProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->priorFailureException:Ljava/lang/Exception;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 151
    const-string v24, "priorFailureMessage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->priorFailureException:Ljava/lang/Exception;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->addApplicationProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->priorFailureException:Ljava/lang/Exception;

    .line 158
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_1

    .line 159
    new-instance v22, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;

    aget-object v24, p3, v12

    invoke-virtual/range {v24 .. v24}, Lorg/jets3t/service/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v22, "signatureRequest":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    aget-object v24, p3, v12

    invoke-virtual/range {v24 .. v24}, Lorg/jets3t/service/model/S3Object;->getMetadataMap()Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->setObjectMetadata(Ljava/util/Map;)V

    .line 162
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->setBucketName(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->addSignatureRequest(Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;)V

    .line 158
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 172
    .end local v22    # "signatureRequest":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    :cond_1
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->gatekeeperUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 173
    .local v14, "postMethod":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v10}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->encodeToProperties()Ljava/util/Properties;

    move-result-object v15

    .line 174
    .local v15, "properties":Ljava/util/Properties;
    invoke-virtual {v15}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 175
    .local v16, "propsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/Properties;->size()I

    move-result v24

    move/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v13, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 177
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 178
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 179
    .local v7, "fieldName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 180
    .local v8, "fieldValue":Ljava/lang/String;
    new-instance v24, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, v24

    invoke-direct {v0, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v7    # "fieldName":Ljava/lang/String;
    .end local v8    # "fieldValue":Ljava/lang/String;
    :cond_2
    new-instance v24, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v24

    invoke-direct {v0, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->httpClientGatekeeper:Lorg/apache/http/client/HttpClient;

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    .line 187
    invoke-direct/range {p0 .. p0}, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->initHttpConnection()Lorg/apache/http/client/HttpClient;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->httpClientGatekeeper:Lorg/apache/http/client/HttpClient;

    .line 192
    :cond_3
    :try_start_0
    new-instance v24, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->gatekeeperUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->detectProxy(Ljava/net/URL;)Lorg/apache/http/HttpHost;

    move-result-object v17

    .line 193
    .local v17, "proxyHost":Lorg/apache/http/HttpHost;
    if-eqz v17, :cond_4

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->httpClientGatekeeper:Lorg/apache/http/client/HttpClient;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    const-string v25, "http.route.default-proxy"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    .end local v17    # "proxyHost":Lorg/apache/http/HttpHost;
    :cond_4
    :goto_2
    sget-object v24, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 206
    sget-object v24, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Contacting Gatekeeper at: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->gatekeeperUrl:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 208
    :cond_5
    const/16 v18, 0x0

    .line 210
    .local v18, "response":Lorg/apache/http/HttpResponse;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->httpClientGatekeeper:Lorg/apache/http/client/HttpClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 211
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 212
    .local v19, "responseCode":I
    const-string v24, "Content-Type"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "contentType":Ljava/lang/String;
    const/16 v24, 0xc8

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 214
    const/16 v20, 0x0

    .line 216
    .local v20, "responseInputStream":Ljava/io/InputStream;
    const-string v24, "Content-Encoding"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 217
    .local v5, "encodingHeader":Lorg/apache/http/Header;
    if-eqz v5, :cond_7

    const-string v24, "gzip"

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 218
    sget-object v24, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 219
    sget-object v24, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v25, "Inflating gzip-encoded response"

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 221
    :cond_6
    new-instance v20, Ljava/util/zip/GZIPInputStream;

    .end local v20    # "responseInputStream":Ljava/io/InputStream;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 226
    .restart local v20    # "responseInputStream":Ljava/io/InputStream;
    :goto_3
    if-nez v20, :cond_8

    .line 227
    new-instance v24, Ljava/io/IOException;

    const-string v25, "No response input stream available from Gatekeeper"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v5    # "encodingHeader":Lorg/apache/http/Header;
    .end local v19    # "responseCode":I
    .end local v20    # "responseInputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 258
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v24

    .line 263
    :try_start_3
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 266
    :goto_4
    throw v24

    .line 198
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v23

    .line 199
    .local v23, "t":Ljava/lang/Throwable;
    sget-object v24, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 200
    sget-object v24, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v25, "No proxy detected"

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 223
    .end local v23    # "t":Ljava/lang/Throwable;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v5    # "encodingHeader":Lorg/apache/http/Header;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "responseCode":I
    .restart local v20    # "responseInputStream":Ljava/io/InputStream;
    :cond_7
    :try_start_4
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    goto :goto_3

    .line 230
    :cond_8
    new-instance v21, Ljava/util/Properties;

    invoke-direct/range {v21 .. v21}, Ljava/util/Properties;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    .local v21, "responseProperties":Ljava/util/Properties;
    :try_start_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 234
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 237
    invoke-static/range {v21 .. v21}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->decodeFromProperties(Ljava/util/Map;)Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;

    move-result-object v11

    .line 241
    .local v11, "gatekeeperResponseMessage":Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;
    invoke-virtual {v11}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->getApplicationProperties()Ljava/util/Properties;

    move-result-object v24

    const-string v25, "gatekeeperErrorCode"

    invoke-virtual/range {v24 .. v25}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, "gatekeeperErrorCode":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 244
    sget-object v24, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 245
    sget-object v24, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Received Gatekeeper error code: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 263
    :cond_9
    :try_start_7
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 266
    :goto_5
    return-object v11

    .line 234
    .end local v9    # "gatekeeperErrorCode":Ljava/lang/String;
    .end local v11    # "gatekeeperResponseMessage":Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;
    :catchall_1
    move-exception v24

    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    throw v24
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 259
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v5    # "encodingHeader":Lorg/apache/http/Header;
    .end local v19    # "responseCode":I
    .end local v20    # "responseInputStream":Ljava/io/InputStream;
    .end local v21    # "responseProperties":Ljava/util/Properties;
    :catch_2
    move-exception v4

    .line 260
    .local v4, "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v24, Ljava/lang/Exception;

    const-string v25, "Gatekeeper did not respond"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 251
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v19    # "responseCode":I
    :cond_a
    :try_start_a
    sget-object v24, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 252
    sget-object v24, Lorg/jets3t/service/utils/signedurl/GatekeeperClientUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "The Gatekeeper did not permit a request. Response code: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", Response content type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 255
    :cond_b
    new-instance v24, Ljava/io/IOException;

    const-string v25, "The Gatekeeper did not permit your request"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 264
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v19    # "responseCode":I
    :catch_3
    move-exception v25

    goto/16 :goto_4

    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v5    # "encodingHeader":Lorg/apache/http/Header;
    .restart local v9    # "gatekeeperErrorCode":Ljava/lang/String;
    .restart local v11    # "gatekeeperResponseMessage":Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;
    .restart local v19    # "responseCode":I
    .restart local v20    # "responseInputStream":Ljava/io/InputStream;
    .restart local v21    # "responseProperties":Ljava/util/Properties;
    :catch_4
    move-exception v24

    goto :goto_5
.end method
