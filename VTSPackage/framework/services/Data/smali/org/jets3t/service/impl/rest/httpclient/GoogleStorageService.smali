.class public Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;
.super Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;
.source "GoogleStorageService.java"


# static fields
.field private static final GOOGLE_REST_HEADER_PREFIX:Ljava/lang/String; = "x-goog-"

.field private static final GOOGLE_REST_METADATA_PREFIX:Ljava/lang/String; = "x-goog-meta-"

.field private static final GOOGLE_SIGNATURE_IDENTIFIER:Ljava/lang/String; = "GOOG1"

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0, v0}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;
    .param p3, "credentialsProvider"    # Lorg/apache/http/client/CredentialsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lorg/jets3t/service/Constants;->JETS3T_PROPERTIES_FILENAME:Ljava/lang/String;

    invoke-static {v0}, Lorg/jets3t/service/Jets3tProperties;->getInstance(Ljava/lang/String;)Lorg/jets3t/service/Jets3tProperties;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V
    .locals 0
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;
    .param p3, "credentialsProvider"    # Lorg/apache/http/client/CredentialsProvider;
    .param p4, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V

    .line 126
    return-void
.end method


# virtual methods
.method public authorizeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 5
    .param p1, "httpMethod"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v2, p0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    instance-of v2, v2, Lorg/jets3t/service/security/OAuth2Credentials;

    if-eqz v2, :cond_1

    .line 451
    :try_start_0
    iget-object v2, p0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    check-cast v2, Lorg/jets3t/service/security/OAuth2Credentials;

    invoke-virtual {v2}, Lorg/jets3t/service/security/OAuth2Credentials;->getOAuth2Tokens()Lorg/jets3t/service/security/OAuth2Tokens;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 456
    .local v1, "tokens":Lorg/jets3t/service/security/OAuth2Tokens;
    if-nez v1, :cond_0

    .line 457
    new-instance v2, Lorg/jets3t/service/ServiceException;

    const-string v3, "Cannot authenticate using OAuth2 until initial tokens are provided, i.e. via setOAuth2Tokens()"

    invoke-direct {v2, v3}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    .end local v1    # "tokens":Lorg/jets3t/service/security/OAuth2Tokens;
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jets3t/service/ServiceException;

    const-string v3, "Failure retrieving OAuth2 tokens"

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 461
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "tokens":Lorg/jets3t/service/security/OAuth2Tokens;
    :cond_0
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authorizing service request with OAuth2 access token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jets3t/service/security/OAuth2Tokens;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 463
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OAuth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jets3t/service/security/OAuth2Tokens;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v1    # "tokens":Lorg/jets3t/service/security/OAuth2Tokens;
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->authorizeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)V

    goto :goto_0
.end method

.method public createBucket(Ljava/lang/String;)Lorg/jets3t/service/model/GSBucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-super {p0, p1}, Lorg/jets3t/service/StorageService;->createBucket(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/GSBucket;

    return-object v0
.end method

.method public createBucket(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)Lorg/jets3t/service/model/GSBucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->createBucket(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)Lorg/jets3t/service/model/GSBucket;

    move-result-object v0

    return-object v0
.end method

.method public createBucket(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)Lorg/jets3t/service/model/GSBucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .param p4, "projectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/GSBucket;

    return-object v0
.end method

.method public bridge synthetic createBucket(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->createBucket(Ljava/lang/String;)Lorg/jets3t/service/model/GSBucket;

    move-result-object v0

    return-object v0
.end method

.method protected createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .param p4, "projectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 503
    if-nez p4, :cond_0

    .line 504
    invoke-super {p0, p1, p2, p3}, Lorg/jets3t/service/StorageService;->createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    .line 506
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "x-goog-project-id"

    invoke-static {v0, p4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/util/Map;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getBucketAcl(Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->getBucketAcl(Ljava/lang/String;)Lorg/jets3t/service/acl/gs/GSAccessControlList;

    move-result-object v0

    return-object v0
.end method

.method public getBucketAcl(Ljava/lang/String;)Lorg/jets3t/service/acl/gs/GSAccessControlList;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-super {p0, p1}, Lorg/jets3t/service/StorageService;->getBucketAcl(Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;

    return-object v0
.end method

.method public getBucketLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getBucketLocationImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBucketLoggingStatus(Ljava/lang/String;)Lorg/jets3t/service/model/GSBucketLoggingStatus;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-super {p0, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getBucketLoggingStatusImpl(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/GSBucketLoggingStatus;

    return-object v0
.end method

.method protected getDisableDnsBuckets()Z
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "gsservice.disable-dns-buckets"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getEnableServerSideEncryption()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method protected getEnableStorageClasses()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "gsservice.gs-endpoint"

    sget-object v2, Lorg/jets3t/service/Constants;->GS_DEFAULT_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpPort()I
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "gsservice.gs-endpoint-http-port"

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getHttpsOnly()Z
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "gsservice.https-only"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getHttpsPort()I
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "gsservice.gs-endpoint-https-port"

    const/16 v2, 0x1bb

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/GSObject;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-super {p0, p1, p2}, Lorg/jets3t/service/StorageService;->getObject(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/GSObject;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/GSObject;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p4, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifMatchTags"    # [Ljava/lang/String;
    .param p6, "ifNoneMatchTags"    # [Ljava/lang/String;
    .param p7, "byteRangeStart"    # Ljava/lang/Long;
    .param p8, "byteRangeEnd"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-super/range {p0 .. p8}, Lorg/jets3t/service/StorageService;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/GSObject;

    return-object v0
.end method

.method public bridge synthetic getObject(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->getObject(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/GSObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/StorageObject;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/Calendar;
    .param p4, "x3"    # Ljava/util/Calendar;
    .param p5, "x4"    # [Ljava/lang/String;
    .param p6, "x5"    # [Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/Long;
    .param p8, "x7"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual/range {p0 .. p8}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/GSObject;

    move-result-object v0

    return-object v0
.end method

.method public getObjectDetails(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/GSObject;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-super {p0, p1, p2}, Lorg/jets3t/service/StorageService;->getObjectDetails(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/GSObject;

    return-object v0
.end method

.method public bridge synthetic getObjectDetails(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->getObjectDetails(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/GSObject;

    move-result-object v0

    return-object v0
.end method

.method public getResourceParameterNames()Ljava/util/List;
    .locals 3
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
    .line 194
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "acl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "logging"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "location"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRestHeaderPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "x-goog-"

    return-object v0
.end method

.method public getRestMetadataPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string v0, "x-goog-meta-"

    return-object v0
.end method

.method protected getSignatureIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string v0, "GOOG1"

    return-object v0
.end method

.method protected getVirtualPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "gsservice.gs-endpoint-virtual-path"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    iget-object v1, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;Z)V

    return-object v0
.end method

.method protected isRecoverable403(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/Exception;)Z
    .locals 3
    .param p1, "httpRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 472
    iget-object v2, p0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    instance-of v2, v2, Lorg/jets3t/service/security/OAuth2Credentials;

    if-eqz v2, :cond_0

    .line 477
    :try_start_0
    iget-object v2, p0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    check-cast v2, Lorg/jets3t/service/security/OAuth2Credentials;

    invoke-virtual {v2}, Lorg/jets3t/service/security/OAuth2Credentials;->getOAuth2Tokens()Lorg/jets3t/service/security/OAuth2Tokens;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 482
    .local v1, "tokens":Lorg/jets3t/service/security/OAuth2Tokens;
    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v1}, Lorg/jets3t/service/security/OAuth2Tokens;->expireAccessToken()V

    .line 484
    const/4 v2, 0x1

    .line 487
    .end local v1    # "tokens":Lorg/jets3t/service/security/OAuth2Tokens;
    :goto_0
    return v2

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0

    .line 487
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->isRecoverable403(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/Exception;)Z

    move-result v2

    goto :goto_0
.end method

.method protected isTargettingGoogleStorageService()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public listAllBuckets()[Lorg/jets3t/service/model/GSBucket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->listAllBuckets(Ljava/lang/String;)[Lorg/jets3t/service/model/GSBucket;

    move-result-object v0

    return-object v0
.end method

.method public listAllBuckets(Ljava/lang/String;)[Lorg/jets3t/service/model/GSBucket;
    .locals 2
    .param p1, "projectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 285
    const-string v1, "List all buckets"

    invoke-virtual {p0, v1}, Lorg/jets3t/service/StorageService;->assertAuthenticatedConnection(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0, p1}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->listAllBucketsImpl(Ljava/lang/String;)[Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    .line 287
    .local v0, "buckets":[Lorg/jets3t/service/model/StorageBucket;
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageBucketMBeans([Lorg/jets3t/service/model/StorageBucket;)V

    .line 288
    invoke-static {v0}, Lorg/jets3t/service/model/GSBucket;->cast([Lorg/jets3t/service/model/StorageBucket;)[Lorg/jets3t/service/model/GSBucket;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic listAllBuckets()[Lorg/jets3t/service/model/StorageBucket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->listAllBuckets()[Lorg/jets3t/service/model/GSBucket;

    move-result-object v0

    return-object v0
.end method

.method protected listAllBucketsImpl(Ljava/lang/String;)[Lorg/jets3t/service/model/StorageBucket;
    .locals 1
    .param p1, "projectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 493
    if-nez p1, :cond_0

    .line 494
    invoke-super {p0}, Lorg/jets3t/service/StorageService;->listAllBucketsImpl()[Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "x-goog-project-id"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->listAllBucketsImpl(Ljava/util/Map;)[Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    goto :goto_0
.end method

.method public listObjects(Ljava/lang/String;)[Lorg/jets3t/service/model/GSObject;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-super {p0, p1}, Lorg/jets3t/service/StorageService;->listObjects(Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    invoke-static {v0}, Lorg/jets3t/service/model/GSObject;->cast([Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/GSObject;

    move-result-object v0

    return-object v0
.end method

.method public listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/GSObject;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-super {p0, p1, p2, p3}, Lorg/jets3t/service/StorageService;->listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    invoke-static {v0}, Lorg/jets3t/service/model/GSObject;->cast([Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/GSObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listObjects(Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->listObjects(Ljava/lang/String;)[Lorg/jets3t/service/model/GSObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/GSObject;

    move-result-object v0

    return-object v0
.end method

.method protected newBucket()Lorg/jets3t/service/model/StorageBucket;
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lorg/jets3t/service/model/GSBucket;

    invoke-direct {v0}, Lorg/jets3t/service/model/GSBucket;-><init>()V

    return-object v0
.end method

.method protected newObject()Lorg/jets3t/service/model/StorageObject;
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lorg/jets3t/service/model/GSObject;

    invoke-direct {v0}, Lorg/jets3t/service/model/GSObject;-><init>()V

    return-object v0
.end method

.method public putBucketAcl(Ljava/lang/String;Lorg/jets3t/service/acl/gs/GSAccessControlList;)V
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "acl"    # Lorg/jets3t/service/acl/gs/GSAccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 384
    if-nez p2, :cond_0

    .line 385
    new-instance v0, Lorg/jets3t/service/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The bucket \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not include ACL information"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->putBucketAclImpl(Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V

    .line 389
    return-void
.end method

.method public putBucketAcl(Lorg/jets3t/service/model/GSBucket;)V
    .locals 2
    .param p1, "bucket"    # Lorg/jets3t/service/model/GSBucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 403
    const-string v0, "Put Bucket Access Control List"

    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jets3t/service/model/GSBucket;->getAcl()Lorg/jets3t/service/acl/gs/GSAccessControlList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/httpclient/GoogleStorageService;->putBucketAcl(Ljava/lang/String;Lorg/jets3t/service/acl/gs/GSAccessControlList;)V

    .line 405
    return-void
.end method

.method public putObject(Ljava/lang/String;Lorg/jets3t/service/model/GSObject;)Lorg/jets3t/service/model/GSObject;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/GSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-super {p0, p1, p2}, Lorg/jets3t/service/StorageService;->putObject(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/GSObject;

    return-object v0
.end method

.method public setBucketLoggingStatus(Ljava/lang/String;Lorg/jets3t/service/model/GSBucketLoggingStatus;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "status"    # Lorg/jets3t/service/model/GSBucketLoggingStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->setBucketLoggingStatusImpl(Ljava/lang/String;Lorg/jets3t/service/model/StorageBucketLoggingStatus;)V

    .line 360
    return-void
.end method

.method protected setupConnection(Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .param p1, "method"    # Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 131
    .local p4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->setupConnection(Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 133
    .local v0, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v1, p0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    instance-of v1, v1, Lorg/jets3t/service/security/OAuth2Credentials;

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "x-goog-api-version"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-object v0
.end method
