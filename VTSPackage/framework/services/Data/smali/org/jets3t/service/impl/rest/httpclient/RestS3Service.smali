.class public Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;
.super Lorg/jets3t/service/S3Service;
.source "RestS3Service.java"


# static fields
.field private static final AWS_REST_HEADER_PREFIX:Ljava/lang/String; = "x-amz-"

.field private static final AWS_REST_METADATA_PREFIX:Ljava/lang/String; = "x-amz-meta-"

.field private static final AWS_SIGNATURE_IDENTIFIER:Ljava/lang/String; = "AWS"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private awsDevPayProductToken:Ljava/lang/String;

.field private awsDevPayUserToken:Ljava/lang/String;

.field private isRequesterPaysEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;
    .param p3, "credentialsProvider"    # Lorg/apache/http/client/CredentialsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lorg/jets3t/service/Constants;->JETS3T_PROPERTIES_FILENAME:Ljava/lang/String;

    invoke-static {v0}, Lorg/jets3t/service/Jets3tProperties;->getInstance(Ljava/lang/String;)Lorg/jets3t/service/Jets3tProperties;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V
    .locals 4
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;
    .param p3, "credentialsProvider"    # Lorg/apache/http/client/CredentialsProvider;
    .param p4, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jets3t/service/S3Service;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V

    .line 94
    iput-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->awsDevPayUserToken:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->awsDevPayProductToken:Ljava/lang/String;

    .line 97
    iput-boolean v3, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->isRequesterPaysEnabled:Z

    .line 159
    instance-of v1, p1, Lorg/jets3t/service/security/AWSDevPayCredentials;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 160
    check-cast v0, Lorg/jets3t/service/security/AWSDevPayCredentials;

    .line 161
    .local v0, "awsDevPayCredentials":Lorg/jets3t/service/security/AWSDevPayCredentials;
    invoke-virtual {v0}, Lorg/jets3t/service/security/AWSDevPayCredentials;->getUserToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->awsDevPayUserToken:Ljava/lang/String;

    .line 162
    invoke-virtual {v0}, Lorg/jets3t/service/security/AWSDevPayCredentials;->getProductToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->awsDevPayProductToken:Ljava/lang/String;

    .line 168
    .end local v0    # "awsDevPayCredentials":Lorg/jets3t/service/security/AWSDevPayCredentials;
    :goto_0
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v2, "httpclient.requester-pays-buckets-enabled"

    invoke-virtual {v1, v2, v3}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->setRequesterPaysEnabled(Z)V

    .line 170
    return-void

    .line 164
    :cond_0
    const-string v1, "devpay.user-token"

    invoke-virtual {p4, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->awsDevPayUserToken:Ljava/lang/String;

    .line 165
    const-string v1, "devpay.product-token"

    invoke-virtual {p4, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->awsDevPayProductToken:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected deleteBucketPolicyImpl(Ljava/lang/String;)V
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 684
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 685
    .local v3, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "policy"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    return-void

    .line 687
    .end local v3    # "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 688
    .local v6, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v6}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public deleteMultipleObjectsWithMFAImpl(Ljava/lang/String;[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jets3t/service/model/MultipleDeleteResult;
    .locals 19
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectNameAndVersions"    # [Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
    .param p3, "multiFactorSerialNumber"    # Ljava/lang/String;
    .param p4, "multiFactorAuthCode"    # Ljava/lang/String;
    .param p5, "isQuiet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1266
    :try_start_0
    const-string v1, "Delete"

    invoke-static {v1}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v1, v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "Quiet"

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    if-eqz p5, :cond_1

    const-string v1, "true"

    :goto_0
    invoke-virtual {v2, v1}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v9

    .line 1269
    .local v9, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    move-object/from16 v8, p2

    .local v8, "arr$":[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
    array-length v13, v8

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_2

    aget-object v14, v8, v12

    .line 1270
    .local v14, "nav":Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
    const-string v1, "Object"

    invoke-virtual {v9, v1}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "Key"

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lorg/jets3t/service/model/container/ObjectKeyAndVersion;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v15

    .line 1273
    .local v15, "objectBuilder":Lcom/jamesmurty/utils/XMLBuilder;
    invoke-virtual {v14}, Lorg/jets3t/service/model/container/ObjectKeyAndVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1274
    const-string v1, "Version"

    invoke-virtual {v15, v1}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lorg/jets3t/service/model/container/ObjectKeyAndVersion;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 1269
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1266
    .end local v8    # "arr$":[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
    .end local v9    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "nav":Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
    .end local v15    # "objectBuilder":Lcom/jamesmurty/utils/XMLBuilder;
    :cond_1
    const-string v1, "false"

    goto :goto_0

    .line 1277
    .restart local v8    # "arr$":[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
    .restart local v9    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    :cond_2
    invoke-virtual {v9}, Lcom/jamesmurty/utils/XMLBuilder;->asString()Ljava/lang/String;

    move-result-object v17

    .line 1278
    .local v17, "xml":Ljava/lang/String;
    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/utils/ServiceUtils;->computeMD5Hash([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 1284
    .local v18, "xmlMd5Hash":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1285
    .local v5, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "delete"

    const-string v2, ""

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1288
    .local v4, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Content-Type"

    const-string v2, "text/plain"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    const-string v1, "Content-MD5"

    move-object/from16 v0, v18

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    if-nez p3, :cond_3

    if-eqz p4, :cond_4

    .line 1291
    :cond_3
    const-string v1, "x-amz-mfa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    :cond_4
    const/4 v3, 0x0

    :try_start_1
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    const-string v1, "text/plain"

    sget-object v2, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v6, v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 1299
    .local v11, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v1

    new-instance v2, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v2, v11}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseMultipleDeleteResponse(Ljava/io/InputStream;)Lorg/jets3t/service/model/MultipleDeleteResult;
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    return-object v1

    .line 1280
    .end local v4    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "arr$":[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
    .end local v9    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v11    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v17    # "xml":Ljava/lang/String;
    .end local v18    # "xmlMd5Hash":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1281
    .local v10, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    const-string v2, "Failed to build XML request document"

    invoke-direct {v1, v2, v10}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1301
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "arr$":[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
    .restart local v9    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .restart local v17    # "xml":Ljava/lang/String;
    .restart local v18    # "xmlMd5Hash":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 1302
    .local v16, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1

    .line 1303
    .end local v16    # "se":Lorg/jets3t/service/ServiceException;
    :catch_2
    move-exception v10

    .line 1304
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    const-string v2, "Unable to encode XML document"

    invoke-direct {v1, v2, v10}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected deleteWebsiteConfigImpl(Ljava/lang/String;)V
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1207
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1208
    .local v3, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "website"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    return-void

    .line 1210
    .end local v3    # "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 1211
    .local v6, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v6}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method protected getBucketLocationImpl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 635
    :try_start_0
    invoke-super {p0, p1}, Lorg/jets3t/service/S3Service;->getBucketLocationImpl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method protected getBucketPolicyImpl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 646
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 647
    .local v2, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "policy"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v2, v5}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 650
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 651
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v2    # "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 652
    .local v3, "se":Lorg/jets3t/service/ServiceException;
    new-instance v4, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v4, v3}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v4

    .line 653
    .end local v3    # "se":Lorg/jets3t/service/ServiceException;
    :catch_1
    move-exception v0

    .line 654
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v4, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getBucketVersioningStatusImpl(Ljava/lang/String;)Lorg/jets3t/service/model/S3BucketVersioningStatus;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 503
    :try_start_0
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking status of versioning for bucket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 506
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 507
    .local v0, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "versioning"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v0, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 509
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v3

    new-instance v4, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v4, v1}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v3, v4}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseVersioningConfigurationResponse(Ljava/io/InputStream;)Lorg/jets3t/service/model/S3BucketVersioningStatus;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 511
    .end local v0    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 512
    .local v2, "se":Lorg/jets3t/service/ServiceException;
    new-instance v3, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v3, v2}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v3
.end method

.method public getDevPayProductToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->awsDevPayProductToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPayUserToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->awsDevPayUserToken:Ljava/lang/String;

    return-object v0
.end method

.method protected getDisableDnsBuckets()Z
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "s3service.disable-dns-buckets"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getEnableServerSideEncryption()Z
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->isTargettingGoogleStorageService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getEnableStorageClasses()Z
    .locals 3

    .prologue
    .line 441
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v2, "s3service.enable-storage-classes"

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->isTargettingGoogleStorageService()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "s3service.s3-endpoint"

    sget-object v2, Lorg/jets3t/service/Constants;->S3_DEFAULT_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpPort()I
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "s3service.s3-endpoint-http-port"

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getHttpsOnly()Z
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "s3service.https-only"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getHttpsPort()I
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "s3service.s3-endpoint-https-port"

    const/16 v2, 0x1bb

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getNotificationConfigImpl(Ljava/lang/String;)Lorg/jets3t/service/model/NotificationConfig;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1220
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1221
    .local v1, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "notification"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v1, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1224
    .local v0, "getMethod":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v3

    new-instance v4, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v4, v0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v3, v4}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseNotificationConfigurationResponse(Ljava/io/InputStream;)Lorg/jets3t/service/model/NotificationConfig;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1226
    .end local v0    # "getMethod":Lorg/apache/http/HttpResponse;
    .end local v1    # "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1227
    .local v2, "se":Lorg/jets3t/service/ServiceException;
    new-instance v3, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v3, v2}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v3
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
    .line 372
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "acl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "policy"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "torrent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "logging"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "requestPayment"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "versions"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "versioning"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "versionId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "uploads"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "uploadId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "partNumber"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "website"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "notification"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "delete"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "response-content-type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "response-content-language"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "response-expires"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "reponse-cache-control"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "response-content-disposition"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "response-content-encoding"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRestHeaderPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const-string v0, "x-amz-"

    return-object v0
.end method

.method public getRestMetadataPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    const-string v0, "x-amz-meta-"

    return-object v0
.end method

.method protected getSignatureIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    const-string v0, "AWS"

    return-object v0
.end method

.method protected getVirtualPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "s3service.s3-endpoint-virtual-path"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getWebsiteConfigImpl(Ljava/lang/String;)Lorg/jets3t/service/model/WebsiteConfig;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1164
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1165
    .local v1, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "website"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v1, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1168
    .local v0, "getMethod":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v3

    new-instance v4, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v4, v0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v3, v4}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseWebsiteConfigurationResponse(Ljava/io/InputStream;)Lorg/jets3t/service/model/WebsiteConfig;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1170
    .end local v0    # "getMethod":Lorg/apache/http/HttpResponse;
    .end local v1    # "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1171
    .local v2, "se":Lorg/jets3t/service/ServiceException;
    new-instance v3, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v3, v2}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v3
.end method

.method protected getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;Z)V

    return-object v0
.end method

.method protected isRequesterPaysBucketImpl(Ljava/lang/String;)Z
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 696
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving Request Payment Configuration settings for Bucket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 700
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v1, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "requestPayment"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3, v1, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 705
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v3

    new-instance v4, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v4, v0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v3, v4}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseRequestPaymentConfigurationResponse(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 708
    .end local v0    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 709
    .local v2, "se":Lorg/jets3t/service/ServiceException;
    new-instance v3, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v3, v2}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v3
.end method

.method public isRequesterPaysEnabled()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->isRequesterPaysEnabled:Z

    return v0
.end method

.method protected isTargettingGoogleStorageService()Z
    .locals 4

    .prologue
    .line 174
    sget-object v0, Lorg/jets3t/service/Constants;->GS_DEFAULT_HOSTNAME:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v1

    const-string v2, "s3service.s3-endpoint"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected listVersionedObjectsChunkedImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)Lorg/jets3t/service/VersionOrDeleteMarkersChunk;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J
    .param p6, "priorLastKey"    # Ljava/lang/String;
    .param p7, "priorLastVersion"    # Ljava/lang/String;
    .param p8, "completeListing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 626
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p8

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->listVersionedObjectsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/VersionOrDeleteMarkersChunk;

    move-result-object v0

    return-object v0
.end method

.method protected listVersionedObjectsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "keyMarker"    # Ljava/lang/String;
    .param p5, "versionMarker"    # Ljava/lang/String;
    .param p6, "maxListingLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p6

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->listVersionedObjectsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/VersionOrDeleteMarkersChunk;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->getItems()[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    move-result-object v0

    return-object v0
.end method

.method protected listVersionedObjectsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/VersionOrDeleteMarkersChunk;
    .locals 19
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J
    .param p6, "automaticallyMergeChunks"    # Z
    .param p7, "nextKeyMarker"    # Ljava/lang/String;
    .param p8, "nextVersionIdMarker"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 521
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 522
    .local v15, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "versions"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    if-eqz p2, :cond_0

    .line 524
    const-string v2, "prefix"

    move-object/from16 v0, p2

    invoke-interface {v15, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_0
    if-eqz p3, :cond_1

    .line 527
    const-string v2, "delimiter"

    move-object/from16 v0, p3

    invoke-interface {v15, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_2

    .line 530
    const-string v2, "max-keys"

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v14, "items":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v9, "commonPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 537
    .local v12, "incompleteListing":Z
    const/4 v13, 0x0

    .line 539
    .local v13, "ioErrorRetryCount":I
    :cond_3
    :goto_0
    if-eqz v12, :cond_7

    .line 540
    if-eqz p7, :cond_9

    .line 541
    const-string v2, "key-marker"

    move-object/from16 v0, p7

    invoke-interface {v15, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :goto_1
    if-eqz p8, :cond_a

    .line 546
    const-string v2, "version-id-marker"

    move-object/from16 v0, p8

    invoke-interface {v15, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :goto_2
    const/4 v11, 0x0

    .line 553
    .local v11, "httpResponse":Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v15, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 557
    const/4 v10, 0x0

    .line 560
    .local v10, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v2

    new-instance v3, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v3, v11}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v2, v3}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseListVersionsResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 563
    const/4 v13, 0x0

    .line 576
    invoke-virtual {v10}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->getItems()[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    move-result-object v17

    .line 577
    .local v17, "partialItems":[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 578
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items in one batch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 580
    :cond_4
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 582
    invoke-virtual {v10}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->getCommonPrefixes()[Ljava/lang/String;

    move-result-object v16

    .line 583
    .local v16, "partialCommonPrefixes":[Ljava/lang/String;
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 584
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " common prefixes in one batch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 586
    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 588
    invoke-virtual {v10}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->isListingTruncated()Z

    move-result v12

    .line 589
    invoke-virtual {v10}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->getNextKeyMarker()Ljava/lang/String;

    move-result-object p7

    .line 590
    invoke-virtual {v10}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->getNextVersionIdMarker()Ljava/lang/String;

    move-result-object p8

    .line 591
    if-eqz v12, :cond_6

    .line 592
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 593
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Yet to receive complete listing of bucket versions, continuing with key-marker="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and version-id-marker="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 599
    :cond_6
    if-nez p6, :cond_3

    .line 603
    .end local v10    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;
    .end local v11    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v16    # "partialCommonPrefixes":[Ljava/lang/String;
    .end local v17    # "partialItems":[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    :cond_7
    if-eqz p6, :cond_c

    .line 604
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 605
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items in total"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 607
    :cond_8
    new-instance v2, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    invoke-interface {v14, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v8}, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_3
    return-object v2

    .line 543
    :cond_9
    const-string v2, "key-marker"

    invoke-interface {v15, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 548
    :cond_a
    const-string v2, "version-id-marker"

    invoke-interface {v15, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 554
    .restart local v11    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v18

    .line 555
    .local v18, "se":Lorg/jets3t/service/ServiceException;
    new-instance v2, Lorg/jets3t/service/S3ServiceException;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v2

    .line 564
    .end local v18    # "se":Lorg/jets3t/service/ServiceException;
    .restart local v10    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;
    :catch_1
    move-exception v18

    .line 565
    .restart local v18    # "se":Lorg/jets3t/service/ServiceException;
    invoke-virtual/range {v18 .. v18}, Lorg/jets3t/service/ServiceException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_b

    const/4 v2, 0x5

    if-ge v13, v2, :cond_b

    .line 566
    add-int/lit8 v13, v13, 0x1

    .line 567
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 568
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Retrying bucket listing failure due to IO error"

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 572
    :cond_b
    new-instance v2, Lorg/jets3t/service/S3ServiceException;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v2

    .line 613
    .end local v10    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;
    .end local v11    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v18    # "se":Lorg/jets3t/service/ServiceException;
    :cond_c
    new-instance v2, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    invoke-interface {v14, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected multipartAbortUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 940
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 941
    .local v3, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "uploadId"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    return-void

    .line 945
    :catch_0
    move-exception v6

    .line 946
    .local v6, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v6}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method protected multipartCompleteUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/jets3t/service/model/MultipartCompleted;
    .locals 16
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipartPart;",
            ">;)",
            "Lorg/jets3t/service/model/MultipartCompleted;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 954
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartPart;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 955
    .local v5, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "uploadId"

    move-object/from16 v0, p1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/MultipartPart;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lorg/jets3t/service/model/MultipartPart;

    .line 959
    .local v15, "sortedParts":[Lorg/jets3t/service/model/MultipartPart;
    new-instance v1, Lorg/jets3t/service/model/MultipartPart$PartNumberComparator;

    invoke-direct {v1}, Lorg/jets3t/service/model/MultipartPart$PartNumberComparator;-><init>()V

    invoke-static {v15, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 961
    :try_start_0
    const-string v1, "CompleteMultipartUpload"

    invoke-static {v1}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v1, v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    .line 963
    .local v6, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    move-object v7, v15

    .local v7, "arr$":[Lorg/jets3t/service/model/MultipartPart;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v13, v7, v11

    .line 964
    .local v13, "part":Lorg/jets3t/service/model/MultipartPart;
    const-string v1, "Part"

    invoke-virtual {v6, v1}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "PartNumber"

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lorg/jets3t/service/model/MultipartPart;->getPartNumber()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "ETag"

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lorg/jets3t/service/model/MultipartPart;->getEtag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 963
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 969
    .end local v13    # "part":Lorg/jets3t/service/model/MultipartPart;
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestPostWithXmlBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/jamesmurty/utils/XMLBuilder;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 971
    .local v10, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v1

    new-instance v2, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v2, v10}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseCompleteMultipartUploadResult(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;

    move-result-object v9

    .line 976
    .local v9, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;
    invoke-virtual {v9}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->getServiceException()Lorg/jets3t/service/ServiceException;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 977
    invoke-virtual {v9}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->getServiceException()Lorg/jets3t/service/ServiceException;

    move-result-object v8

    .line 978
    .local v8, "e":Lorg/jets3t/service/ServiceException;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/utils/RestUtils;->convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/jets3t/service/ServiceException;->setResponseHeaders(Ljava/util/Map;)V

    .line 980
    throw v8
    :try_end_0
    .catch Lorg/jets3t/service/S3ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_3

    .line 983
    .end local v6    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v7    # "arr$":[Lorg/jets3t/service/model/MultipartPart;
    .end local v8    # "e":Lorg/jets3t/service/ServiceException;
    .end local v9    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :catch_0
    move-exception v14

    .line 984
    .local v14, "se":Lorg/jets3t/service/S3ServiceException;
    throw v14

    .line 982
    .end local v14    # "se":Lorg/jets3t/service/S3ServiceException;
    .restart local v6    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .restart local v7    # "arr$":[Lorg/jets3t/service/model/MultipartPart;
    .restart local v9    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;
    .restart local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->getMultipartCompleted()Lorg/jets3t/service/model/MultipartCompleted;
    :try_end_1
    .catch Lorg/jets3t/service/S3ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    return-object v1

    .line 985
    .end local v6    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v7    # "arr$":[Lorg/jets3t/service/model/MultipartPart;
    .end local v9    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :catch_1
    move-exception v14

    .line 986
    .local v14, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v14}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1

    .line 987
    .end local v14    # "se":Lorg/jets3t/service/ServiceException;
    :catch_2
    move-exception v8

    .line 988
    .local v8, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v8}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 989
    .end local v8    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v8

    .line 990
    .local v8, "e":Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v8}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected multipartListPartsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipartPart;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1123
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1124
    .local v5, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "uploadId"

    invoke-interface {v5, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const-string v7, "max-parts"

    const-string v8, "1000"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .local v4, "parts":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartPart;>;"
    const/4 v3, 0x0

    .line 1130
    .local v3, "nextPartNumberMarker":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1132
    .local v2, "incompleteListing":Z
    :cond_0
    if-eqz v3, :cond_1

    .line 1133
    const-string v7, "part-number-marker"

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {p0, p2, p3, v5, v7}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1139
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v7

    new-instance v8, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v8, v1}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v7, v8}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseListMultipartPartsResult(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;

    move-result-object v0

    .line 1142
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;
    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->getMultipartPartList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1144
    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->isTruncated()Z

    move-result v2

    .line 1145
    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->getNextPartNumberMarker()Ljava/lang/String;

    move-result-object v3

    .line 1148
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 1150
    new-instance v7, Lorg/jets3t/service/ServiceException;

    const-string v8, "Unable to retrieve paginated ListMultipartPartsResult without valid NextKeyMarker value."

    invoke-direct {v7, v8}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    .end local v0    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v2    # "incompleteListing":Z
    .end local v3    # "nextPartNumberMarker":Ljava/lang/String;
    .end local v4    # "parts":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartPart;>;"
    :catch_0
    move-exception v6

    .line 1156
    .local v6, "se":Lorg/jets3t/service/ServiceException;
    new-instance v7, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v7, v6}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v7

    .line 1135
    .end local v6    # "se":Lorg/jets3t/service/ServiceException;
    .restart local v2    # "incompleteListing":Z
    .restart local v3    # "nextPartNumberMarker":Ljava/lang/String;
    .restart local v4    # "parts":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartPart;>;"
    :cond_1
    :try_start_1
    const-string v7, "part-number-marker"

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1153
    .restart local v0    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;
    .restart local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_2
    if-nez v2, :cond_0

    .line 1154
    return-object v4
.end method

.method protected multipartListUploadsChunkedImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)Lorg/jets3t/service/MultipartUploadChunk;
    .locals 22
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "keyMarker"    # Ljava/lang/String;
    .param p5, "uploadIdMarker"    # Ljava/lang/String;
    .param p6, "maxUploads"    # Ljava/lang/Integer;
    .param p7, "autoMergeChunks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1004
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1005
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The bucket name parameter must be specified when listing multipart uploads"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1008
    :cond_1
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 1009
    .local v19, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "uploads"

    const-string v4, ""

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    if-eqz p2, :cond_2

    .line 1011
    const-string v3, "prefix"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    :cond_2
    if-eqz p3, :cond_3

    .line 1014
    const-string v3, "delimiter"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    :cond_3
    if-eqz p6, :cond_4

    .line 1017
    const-string v3, "max-uploads"

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    :cond_4
    if-eqz p4, :cond_5

    .line 1020
    const-string v3, "key-marker"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    :cond_5
    if-eqz p5, :cond_6

    .line 1023
    const-string v3, "upload-id-marker"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    :cond_6
    move-object/from16 v8, p4

    .line 1027
    .local v8, "nextKeyMarker":Ljava/lang/String;
    move-object/from16 v9, p5

    .line 1029
    .local v9, "nextUploadIdMarker":Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v21, "uploads":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartUpload;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    .local v10, "commonPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x1

    .line 1033
    .local v14, "incompleteListing":Z
    const/4 v15, 0x0

    .line 1034
    .local v15, "ioErrorRetryCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v4, "httpclient.retry-max"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v16

    .line 1038
    .local v16, "ioErrorRetryMaxCount":I
    :cond_7
    :goto_0
    if-eqz v14, :cond_f

    .line 1039
    if-eqz v8, :cond_a

    .line 1040
    :try_start_0
    const-string v3, "key-marker"

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :goto_1
    if-eqz v9, :cond_b

    .line 1045
    const-string v3, "upload-id-marker"

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 1051
    .local v13, "httpResponse":Lorg/apache/http/HttpResponse;
    const/4 v12, 0x0

    .line 1053
    .local v12, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v3

    new-instance v4, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v4, v13}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v3, v4}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseListMultipartUploadsResult(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 1055
    const/4 v15, 0x0

    .line 1070
    :try_start_2
    invoke-virtual {v12}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->getMultipartUploadList()Ljava/util/List;

    move-result-object v17

    .line 1071
    .local v17, "partial":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartUpload;>;"
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1072
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " objects in one batch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1074
    :cond_8
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1076
    invoke-virtual {v12}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->getCommonPrefixes()[Ljava/lang/String;

    move-result-object v18

    .line 1077
    .local v18, "partialCommonPrefixes":[Ljava/lang/String;
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1078
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " common prefixes in one batch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1080
    :cond_9
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1082
    invoke-virtual {v12}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->isTruncated()Z

    move-result v14

    .line 1084
    if-eqz v14, :cond_d

    .line 1085
    invoke-virtual {v12}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v8

    .line 1086
    invoke-virtual {v12}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->getNextUploadIdMarker()Ljava/lang/String;

    move-result-object v9

    .line 1088
    if-nez v8, :cond_e

    if-nez v9, :cond_e

    .line 1089
    new-instance v3, Lorg/jets3t/service/ServiceException;

    const-string v4, "Unable to retrieve paginated ListMultipartUploadsResult without valid NextKeyMarker  or NextUploadIdMarker value."

    invoke-direct {v3, v4}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Lorg/jets3t/service/ServiceException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1114
    .end local v12    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;
    .end local v13    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v17    # "partial":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartUpload;>;"
    .end local v18    # "partialCommonPrefixes":[Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 1115
    .local v20, "se":Lorg/jets3t/service/ServiceException;
    new-instance v3, Lorg/jets3t/service/S3ServiceException;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v3

    .line 1042
    .end local v20    # "se":Lorg/jets3t/service/ServiceException;
    :cond_a
    :try_start_3
    const-string v3, "key-marker"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1047
    :cond_b
    const-string v3, "upload-id-marker"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1056
    .restart local v12    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;
    .restart local v13    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v11

    .line 1057
    .local v11, "e":Lorg/jets3t/service/ServiceException;
    invoke-virtual {v11}, Lorg/jets3t/service/ServiceException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/io/IOException;

    if-eqz v3, :cond_c

    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    .line 1060
    add-int/lit8 v15, v15, 0x1

    .line 1061
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1062
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Retrying bucket listing failure due to IO error"

    invoke-interface {v3, v4, v11}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1066
    :cond_c
    throw v11

    .line 1094
    .end local v11    # "e":Lorg/jets3t/service/ServiceException;
    .restart local v17    # "partial":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartUpload;>;"
    .restart local v18    # "partialCommonPrefixes":[Ljava/lang/String;
    :cond_d
    const/4 v8, 0x0

    .line 1095
    const/4 v9, 0x0

    .line 1098
    :cond_e
    if-nez p7, :cond_7

    .line 1103
    .end local v12    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;
    .end local v13    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v17    # "partial":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartUpload;>;"
    .end local v18    # "partialCommonPrefixes":[Ljava/lang/String;
    :cond_f
    if-eqz p7, :cond_10

    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1104
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uploads in total"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1107
    :cond_10
    new-instance v3, Lorg/jets3t/service/MultipartUploadChunk;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/jets3t/service/model/MultipartUpload;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/jets3t/service/model/MultipartUpload;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v10, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v3 .. v9}, Lorg/jets3t/service/MultipartUploadChunk;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/MultipartUpload;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/jets3t/service/ServiceException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v3
.end method

.method protected multipartStartUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartUpload;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p4, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .param p5, "storageClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jets3t/service/acl/AccessControlList;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jets3t/service/model/MultipartUpload;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 747
    .local p3, "metadataProvided":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->multipartStartUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v0

    return-object v0
.end method

.method protected multipartStartUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartUpload;
    .locals 15
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p4, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .param p5, "storageClass"    # Ljava/lang/String;
    .param p6, "serverSideEncryptionAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jets3t/service/acl/AccessControlList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jets3t/service/model/MultipartUpload;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 757
    .local p3, "metadataProvided":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 758
    .local v6, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "uploads"

    const-string v3, ""

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 763
    .local v5, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_1

    .line 764
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 765
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content-length"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 766
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 772
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {p0, v5, v0, v2, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->prepareStorageClass(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)V

    .line 773
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-virtual {p0, v5, v0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->prepareServerSideEncryption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    move-object/from16 v0, p4

    invoke-virtual {p0, v5, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->prepareRESTHeaderAcl(Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v13, 0x1

    .line 778
    .local v13, "putNonStandardAcl":Z
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_0
    invoke-virtual/range {v2 .. v8}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 780
    .local v10, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v2

    new-instance v3, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v3, v10}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v2, v3}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseInitiateMultipartUploadResult(Ljava/io/InputStream;)Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v12

    .line 783
    .local v12, "multipartUpload":Lorg/jets3t/service/model/MultipartUpload;
    invoke-virtual {v12, v5}, Lorg/jets3t/service/model/MultipartUpload;->setMetadata(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    return-object v12

    .line 775
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v12    # "multipartUpload":Lorg/jets3t/service/model/MultipartUpload;
    .end local v13    # "putNonStandardAcl":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 785
    .restart local v13    # "putNonStandardAcl":Z
    :catch_0
    move-exception v14

    .line 786
    .local v14, "se":Lorg/jets3t/service/ServiceException;
    new-instance v2, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v2, v14}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v2
.end method

.method protected multipartUploadPartCopyImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartPart;
    .locals 14
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "targetBucketName"    # Ljava/lang/String;
    .param p3, "targetObjectKey"    # Ljava/lang/String;
    .param p4, "partNumber"    # Ljava/lang/Integer;
    .param p5, "sourceBucketName"    # Ljava/lang/String;
    .param p6, "sourceObjectKey"    # Ljava/lang/String;
    .param p7, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p8, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p9, "ifMatchTags"    # [Ljava/lang/String;
    .param p10, "ifNoneMatchTags"    # [Ljava/lang/String;
    .param p11, "byteRangeStart"    # Ljava/lang/Long;
    .param p12, "byteRangeEnd"    # Ljava/lang/Long;
    .param p13, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 862
    :try_start_0
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multipart Copy Object from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to upload id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "as part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 867
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 869
    .local v4, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 871
    .local v12, "sourceKey":Ljava/lang/String;
    if-eqz p13, :cond_1

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?versionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 875
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "copy-source"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    if-eqz p7, :cond_2

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "copy-source-if-modified-since"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p7 .. p7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lorg/jets3t/service/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 881
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only copy object if-modified-since:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 884
    :cond_2
    if-eqz p8, :cond_3

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "copy-source-if-unmodified-since"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p8 .. p8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lorg/jets3t/service/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 888
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only copy object if-unmodified-since:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 891
    :cond_3
    if-eqz p9, :cond_4

    .line 892
    const-string v1, ","

    move-object/from16 v0, p9

    invoke-static {v0, v1}, Lorg/jets3t/service/utils/ServiceUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 893
    .local v13, "tags":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "copy-source-if-match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 895
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only copy object based on hash comparison if-match:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 898
    .end local v13    # "tags":Ljava/lang/String;
    :cond_4
    if-eqz p10, :cond_5

    .line 899
    const-string v1, ","

    move-object/from16 v0, p10

    invoke-static {v0, v1}, Lorg/jets3t/service/utils/ServiceUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 900
    .restart local v13    # "tags":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "copy-source-if-none-match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 902
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only copy object based on hash comparison if-none-match:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 906
    .end local v13    # "tags":Ljava/lang/String;
    :cond_5
    if-nez p11, :cond_6

    if-eqz p12, :cond_9

    .line 907
    :cond_6
    if-eqz p11, :cond_7

    if-nez p12, :cond_8

    .line 908
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "both range start and end must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    .end local v4    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "sourceKey":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 932
    .local v11, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v11}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1

    .line 910
    .end local v11    # "se":Lorg/jets3t/service/ServiceException;
    .restart local v4    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "sourceKey":Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string v1, "bytes=%s-%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p11, v2, v3

    const/4 v3, 0x1

    aput-object p12, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 911
    .local v9, "range":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "copy-source-range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 913
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copy object range:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 917
    .end local v9    # "range":Ljava/lang/String;
    :cond_9
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 918
    .local v5, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "partNumber"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v1, "uploadId"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v7}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;

    move-result-object v10

    .line 924
    .local v10, "responseAndByteCount":Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v1

    new-instance v2, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-virtual {v10}, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseMultipartUploadPartCopyResult(Ljava/io/InputStream;)Lorg/jets3t/service/model/MultipartPart;

    move-result-object v8

    .line 930
    .local v8, "part":Lorg/jets3t/service/model/MultipartPart;
    new-instance v1, Lorg/jets3t/service/model/MultipartPart;

    invoke-virtual {v8}, Lorg/jets3t/service/model/MultipartPart;->getLastModified()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v8}, Lorg/jets3t/service/model/MultipartPart;->getEtag()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-direct {v1, v0, v2, v3, v6}, Lorg/jets3t/service/model/MultipartPart;-><init>(Ljava/lang/Integer;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method protected multipartUploadPartImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/MultipartPart;
    .locals 19
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "partNumber"    # Ljava/lang/Integer;
    .param p4, "object"    # Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 794
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 795
    .local v17, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "uploadId"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v5, "partNumber"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    monitor-enter p4

    .line 800
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v13, "metadataNamesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/S3Object;->getMetadataMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 802
    .local v14, "name":Ljava/lang/String;
    sget-object v5, Lorg/jets3t/service/utils/RestUtils;->HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 804
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 810
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "metadataNamesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 807
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "metadataNamesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 808
    .restart local v14    # "name":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lorg/jets3t/service/model/S3Object;->removeMetadata(Ljava/lang/String;)V

    goto :goto_1

    .line 810
    .end local v14    # "name":Ljava/lang/String;
    :cond_2
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 815
    const/4 v11, 0x0

    .line 817
    .local v11, "isLiveMD5HashingRequired":Z
    const/16 v16, 0x0

    .line 818
    .local v16, "requestEntity":Lorg/apache/http/HttpEntity;
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/S3Object;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 819
    const-string v5, "Content-Length"

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/jets3t/service/model/S3Object;->containsMetadata(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 820
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 821
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uploading multipart part data with Content-Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/S3Object;->getContentLength()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 824
    :cond_3
    new-instance v4, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/S3Object;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/S3Object;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/S3Object;->getContentLength()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct/range {v4 .. v11}, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;JLorg/jets3t/service/Jets3tProperties;Z)V
    :try_end_2
    .catch Lorg/jets3t/service/ServiceException; {:try_start_2 .. :try_end_2} :catch_0

    .line 840
    .end local v16    # "requestEntity":Lorg/apache/http/HttpEntity;
    .local v4, "requestEntity":Lorg/apache/http/HttpEntity;
    :goto_2
    :try_start_3
    const-string v5, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/jets3t/service/model/S3Object;->setStorageClass(Ljava/lang/String;)V

    .line 841
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->putObjectWithRequestEntityImpl(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Lorg/apache/http/HttpEntity;Ljava/util/Map;)V

    .line 844
    new-instance v15, Lorg/jets3t/service/model/MultipartPart;

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/S3Object;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/S3Object;->getETag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/S3Object;->getContentLength()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-direct {v15, v0, v5, v6, v7}, Lorg/jets3t/service/model/MultipartPart;-><init>(Ljava/lang/Integer;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Lorg/jets3t/service/ServiceException; {:try_start_3 .. :try_end_3} :catch_1

    .line 846
    .local v15, "part":Lorg/jets3t/service/model/MultipartPart;
    return-object v15

    .line 830
    .end local v4    # "requestEntity":Lorg/apache/http/HttpEntity;
    .end local v15    # "part":Lorg/jets3t/service/model/MultipartPart;
    .restart local v16    # "requestEntity":Lorg/apache/http/HttpEntity;
    :cond_4
    :try_start_4
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 831
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Content-Length of multipart part stream not set, will automatically determine data length in memory"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 834
    :cond_5
    new-instance v4, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/S3Object;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V
    :try_end_4
    .catch Lorg/jets3t/service/ServiceException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v16    # "requestEntity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "requestEntity":Lorg/apache/http/HttpEntity;
    goto :goto_2

    .line 847
    .end local v4    # "requestEntity":Lorg/apache/http/HttpEntity;
    .restart local v16    # "requestEntity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v18

    move-object/from16 v4, v16

    .line 848
    .end local v16    # "requestEntity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "requestEntity":Lorg/apache/http/HttpEntity;
    .local v18, "se":Lorg/jets3t/service/ServiceException;
    :goto_3
    new-instance v5, Lorg/jets3t/service/S3ServiceException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v5

    .line 847
    .end local v18    # "se":Lorg/jets3t/service/ServiceException;
    :catch_1
    move-exception v18

    goto :goto_3

    .end local v4    # "requestEntity":Lorg/apache/http/HttpEntity;
    .restart local v16    # "requestEntity":Lorg/apache/http/HttpEntity;
    :cond_6
    move-object/from16 v4, v16

    .end local v16    # "requestEntity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "requestEntity":Lorg/apache/http/HttpEntity;
    goto :goto_2
.end method

.method protected newBucket()Lorg/jets3t/service/model/StorageBucket;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lorg/jets3t/service/model/S3Bucket;

    invoke-direct {v0}, Lorg/jets3t/service/model/S3Bucket;-><init>()V

    return-object v0
.end method

.method protected newObject()Lorg/jets3t/service/model/StorageObject;
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lorg/jets3t/service/model/S3Object;

    invoke-direct {v0}, Lorg/jets3t/service/model/S3Object;-><init>()V

    return-object v0
.end method

.method protected setBucketPolicyImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "policyDocument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 662
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 663
    .local v4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "policy"

    const-string v1, ""

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 666
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Content-Type"

    const-string v1, "text/plain"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const/4 v2, 0x0

    :try_start_0
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v0, "text/plain"

    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, p2, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 677
    return-void

    .line 672
    :catch_0
    move-exception v8

    .line 673
    .local v8, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v8}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0

    .line 674
    .end local v8    # "se":Lorg/jets3t/service/ServiceException;
    :catch_1
    move-exception v7

    .line 675
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    const-string v1, "Unable to encode LoggingStatus XML document"

    invoke-direct {v0, v1, v7}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setDevPayProductToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "productToken"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->awsDevPayProductToken:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setDevPayUserToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "userToken"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->awsDevPayUserToken:Ljava/lang/String;

    .line 203
    return-void
.end method

.method protected setNotificationConfigImpl(Ljava/lang/String;Lorg/jets3t/service/model/NotificationConfig;)V
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/jets3t/service/model/NotificationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1235
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1236
    .local v4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "notification"

    const-string v1, ""

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1240
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 1242
    .local v9, "xml":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lorg/jets3t/service/model/NotificationConfig;->toXml()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1248
    const/4 v2, 0x0

    :try_start_1
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v0, "text/plain"

    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, v9, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1256
    return-void

    .line 1243
    :catch_0
    move-exception v7

    .line 1244
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    const-string v1, "Unable to build NotificationConfig XML document"

    invoke-direct {v0, v1, v7}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1251
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 1252
    .local v8, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v8}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0

    .line 1253
    .end local v8    # "se":Lorg/jets3t/service/ServiceException;
    :catch_2
    move-exception v7

    .line 1254
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    const-string v1, "Unable to encode XML document"

    invoke-direct {v0, v1, v7}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected setRequesterPaysBucketImpl(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "requesterPays"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 715
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Request Payment Configuration settings for bucket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 719
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 720
    .local v4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "requestPayment"

    const-string v1, ""

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 723
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Content-Type"

    const-string v1, "text/plain"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<RequestPaymentConfiguration xmlns=\"http://s3.amazonaws.com/doc/2006-03-01/\"><Payer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    const-string v0, "Requester"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</Payer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</RequestPaymentConfiguration>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 733
    .local v9, "xml":Ljava/lang/String;
    const/4 v2, 0x0

    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v0, "text/plain"

    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, v9, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;

    .line 741
    return-void

    .line 726
    .end local v9    # "xml":Ljava/lang/String;
    :cond_1
    const-string v0, "BucketOwner"
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 736
    :catch_0
    move-exception v8

    .line 737
    .local v8, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v8}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0

    .line 738
    .end local v8    # "se":Lorg/jets3t/service/ServiceException;
    :catch_1
    move-exception v7

    .line 739
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    const-string v1, "Unable to encode RequestPaymentConfiguration XML document"

    invoke-direct {v0, v1, v7}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setRequesterPaysEnabled(Z)V
    .locals 0
    .param p1, "isRequesterPays"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->isRequesterPaysEnabled:Z

    .line 246
    return-void
.end method

.method protected setWebsiteConfigImpl(Ljava/lang/String;Lorg/jets3t/service/model/WebsiteConfig;)V
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/jets3t/service/model/WebsiteConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1179
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1180
    .local v4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "website"

    const-string v1, ""

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1184
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 1186
    .local v9, "xml":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lorg/jets3t/service/model/WebsiteConfig;->toXml()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1192
    const/4 v2, 0x0

    :try_start_1
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v0, "text/plain"

    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, v9, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1200
    return-void

    .line 1187
    :catch_0
    move-exception v7

    .line 1188
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    const-string v1, "Unable to build WebsiteConfig XML document"

    invoke-direct {v0, v1, v7}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1195
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 1196
    .local v8, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v8}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0

    .line 1197
    .end local v8    # "se":Lorg/jets3t/service/ServiceException;
    :catch_2
    move-exception v7

    .line 1198
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    const-string v1, "Unable to encode XML document"

    invoke-direct {v0, v1, v7}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected setupConnection(Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 8
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
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 283
    .local p4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jets3t/service/S3Service;->setupConnection(Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    .local v0, "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getDevPayUserToken()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getDevPayProductToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 291
    :cond_0
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getDevPayProductToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getDevPayUserToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getDevPayProductToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "securityToken":Ljava/lang/String;
    const-string v5, "x-amz-security-token"

    invoke-interface {v0, v5, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Including DevPay user and product tokens in request: x-amz-security-token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 309
    .end local v3    # "securityToken":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    instance-of v5, v5, Lorg/jets3t/service/security/AWSSessionCredentials;

    if-eqz v5, :cond_2

    .line 310
    iget-object v5, p0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    check-cast v5, Lorg/jets3t/service/security/AWSSessionCredentials;

    invoke-virtual {v5}, Lorg/jets3t/service/security/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "sessionToken":Ljava/lang/String;
    const-string v5, "x-amz-security-token"

    invoke-interface {v0, v5, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Including AWS session token in request: x-amz-security-token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 319
    .end local v4    # "sessionToken":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->isRequesterPaysEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 320
    const-string v5, "x-amz-request-payer=requester"

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "requesterPaysHeaderAndValue":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-interface {v0, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Including Requester Pays header in request: x-amz-request-payer=requester"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 328
    .end local v1    # "requesterPaysHeaderAndValue":[Ljava/lang/String;
    :cond_3
    return-object v0

    .line 284
    .end local v0    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception v2

    .line 285
    .local v2, "se":Lorg/jets3t/service/ServiceException;
    new-instance v5, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v5, v2}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v5

    .line 299
    .end local v2    # "se":Lorg/jets3t/service/ServiceException;
    .restart local v0    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_4
    const-string v5, "x-amz-security-token"

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getDevPayUserToken()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 301
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Including DevPay user token in request: x-amz-security-token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getDevPayUserToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected updateBucketVersioningStatusImpl(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "multiFactorAuthDeleteEnabled"    # Z
    .param p4, "multiFactorSerialNumber"    # Ljava/lang/String;
    .param p5, "multiFactorAuthCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 471
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    const-string v0, "Enabling"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " versioning for bucket "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_4

    const-string v0, " with Multi-Factor Auth enabled"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 477
    :cond_0
    :try_start_0
    const-string v0, "VersioningConfiguration"

    invoke-static {v0}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "xmlns"

    const-string v2, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v0, v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "Status"

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    if-eqz p2, :cond_5

    const-string v0, "Enabled"

    :goto_2
    invoke-virtual {v1, v0}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "MfaDelete"

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    if-eqz p3, :cond_6

    const-string v0, "Enabled"

    :goto_3
    invoke-virtual {v1, v0}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    .line 481
    .local v5, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 482
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "versioning"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 484
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p4, :cond_1

    if-eqz p5, :cond_2

    .line 485
    :cond_1
    const-string v0, "x-amz-mfa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    :cond_2
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->performRestPutWithXmlBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/jamesmurty/utils/XMLBuilder;)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 496
    return-void

    .line 472
    .end local v3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    :cond_3
    const-string v0, "Suspending"

    goto/16 :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 477
    :cond_5
    :try_start_2
    const-string v0, "Suspended"

    goto :goto_2

    :cond_6
    const-string v0, "Disabled"

    goto :goto_3

    .line 490
    .restart local v3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    :catch_0
    move-exception v7

    .line 491
    .local v7, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v7}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 493
    .end local v3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v7    # "se":Lorg/jets3t/service/ServiceException;
    :catch_1
    move-exception v6

    .line 494
    .local v6, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    const-string v1, "Failed to build XML document for request"

    invoke-direct {v0, v1, v6}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
