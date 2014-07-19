.class public Lorg/jets3t/service/CloudFrontService;
.super Ljava/lang/Object;
.source "CloudFrontService.java"

# interfaces
.implements Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;


# static fields
.field public static final DEFAULT_BUCKET_SUFFIX:Ljava/lang/String; = ".s3.amazonaws.com"

.field public static final ENDPOINT:Ljava/lang/String; = "https://cloudfront.amazonaws.com/"

.field public static final ORIGIN_ACCESS_IDENTITY_PREFIX:Ljava/lang/String; = "origin-access-identity/cloudfront/"

.field public static final ORIGIN_ACCESS_IDENTITY_URI_PATH:Ljava/lang/String; = "/origin-access-identity/cloudfront"

.field public static final VERSION:Ljava/lang/String; = "2010-11-01"

.field public static final XML_NAMESPACE:Ljava/lang/String; = "http://cloudfront.amazonaws.com/doc/2010-11-01/"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private credentials:Lorg/jets3t/service/security/ProviderCredentials;

.field private credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

.field protected httpClient:Lorg/apache/http/client/HttpClient;

.field protected internalErrorRetryMax:I

.field private invokingApplicationDescription:Ljava/lang/String;

.field protected jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

.field protected timeOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lorg/jets3t/service/CloudFrontService;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/jets3t/service/CloudFrontService;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V
    .locals 3
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;
    .param p3, "credentialsProvider"    # Lorg/apache/http/client/CredentialsProvider;
    .param p4, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v2, p0, Lorg/jets3t/service/CloudFrontService;->internalErrorRetryMax:I

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jets3t/service/CloudFrontService;->timeOffset:J

    .line 140
    iput-object p1, p0, Lorg/jets3t/service/CloudFrontService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    .line 141
    iput-object p2, p0, Lorg/jets3t/service/CloudFrontService;->invokingApplicationDescription:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lorg/jets3t/service/CloudFrontService;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    .line 143
    if-nez p4, :cond_0

    .line 144
    sget-object v0, Lorg/jets3t/service/Constants;->JETS3T_PROPERTIES_FILENAME:Ljava/lang/String;

    invoke-static {v0}, Lorg/jets3t/service/Jets3tProperties;->getInstance(Ljava/lang/String;)Lorg/jets3t/service/Jets3tProperties;

    move-result-object p4

    .line 146
    :cond_0
    iput-object p4, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    .line 147
    const-string v0, "cloudfront-service.internal-error-retry-max"

    invoke-virtual {p4, v0, v2}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jets3t/service/CloudFrontService;->internalErrorRetryMax:I

    .line 148
    invoke-virtual {p0}, Lorg/jets3t/service/CloudFrontService;->initializeDefaults()V

    .line 149
    return-void
.end method

.method public static buildPolicyForSignedUrl(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 8
    .param p0, "resourcePath"    # Ljava/lang/String;
    .param p1, "epochDateLessThan"    # Ljava/util/Date;
    .param p2, "limitToIpAddressCIDR"    # Ljava/lang/String;
    .param p3, "epochDateGreaterThan"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    .line 2053
    if-nez p1, :cond_0

    .line 2054
    new-instance v2, Lorg/jets3t/service/CloudFrontServiceException;

    const-string v3, "epochDateLessThan must be provided to sign CloudFront URLs"

    invoke-direct {v2, v3}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2057
    :cond_0
    if-nez p0, :cond_1

    .line 2058
    const-string p0, "*"

    .line 2060
    :cond_1
    if-nez p2, :cond_2

    const-string v0, "0.0.0.0/0"

    .line 2063
    .local v0, "ipAddress":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"Statement\": [{\"Resource\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"Condition\":{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"DateLessThan\":{\"AWS:EpochTime\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    div-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"IpAddress\":{\"AWS:SourceIp\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_3

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}}]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2074
    .local v1, "policy":Ljava/lang/String;
    return-object v1

    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v1    # "policy":Ljava/lang/String;
    :cond_2
    move-object v0, p2

    .line 2060
    goto :goto_0

    .line 2063
    .restart local v0    # "ipAddress":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",\"DateGreaterThan\":{\"AWS:EpochTime\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected static makeBytesUrlSafe([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2003
    invoke-static {p0}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x7e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static makeStringUrlSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1988
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x7e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private releaseConnection(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .param p1, "pResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 336
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static sanitizeS3BucketName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "proposedBucketName"    # Ljava/lang/String;

    .prologue
    .line 1969
    const-string v0, ".s3.amazonaws.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1970
    sget-object v0, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bucket names used within the CloudFront service should be specified as full S3 subdomain paths like \'jets3t.s3.amazonaws.com\'. Repairing faulty bucket name value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" by adding suffix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".s3.amazonaws.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".s3.amazonaws.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1976
    .end local p0    # "proposedBucketName":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static signUrl(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "resourceUrlOrPath"    # Ljava/lang/String;
    .param p1, "keyPairId"    # Ljava/lang/String;
    .param p2, "derPrivateKey"    # [B
    .param p3, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 2111
    :try_start_0
    const-string v5, "UTF-8"

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {p2, v5}, Lorg/jets3t/service/security/EncryptionUtil;->signWithRsaSha1([B[B)[B

    move-result-object v1

    .line 2114
    .local v1, "signatureBytes":[B
    invoke-static {p3}, Lorg/jets3t/service/CloudFrontService;->makeStringUrlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2115
    .local v3, "urlSafePolicy":Ljava/lang/String;
    invoke-static {v1}, Lorg/jets3t/service/CloudFrontService;->makeBytesUrlSafe([B)Ljava/lang/String;

    move-result-object v4

    .line 2117
    .local v4, "urlSafeSignature":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    const-string v5, "&"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Policy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&Signature="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&Key-Pair-Id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2122
    .local v2, "signedUrl":Ljava/lang/String;
    return-object v2

    .line 2117
    .end local v2    # "signedUrl":Ljava/lang/String;
    :cond_0
    const-string v5, "?"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2123
    .end local v1    # "signatureBytes":[B
    .end local v3    # "urlSafePolicy":Ljava/lang/String;
    .end local v4    # "urlSafeSignature":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2124
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 2125
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 2126
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v5, v0}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static signUrlCanned(Ljava/lang/String;Ljava/lang/String;[BLjava/util/Date;)Ljava/lang/String;
    .locals 10
    .param p0, "resourceUrlOrPath"    # Ljava/lang/String;
    .param p1, "keyPairId"    # Ljava/lang/String;
    .param p2, "derPrivateKey"    # [B
    .param p3, "epochDateLessThan"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 2162
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"Statement\":[{\"Resource\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"Condition\":{\"DateLessThan\":{\"AWS:EpochTime\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}}}]}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2167
    .local v0, "cannedPolicy":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {p2, v5}, Lorg/jets3t/service/security/EncryptionUtil;->signWithRsaSha1([B[B)[B

    move-result-object v2

    .line 2170
    .local v2, "signatureBytes":[B
    invoke-static {v2}, Lorg/jets3t/service/CloudFrontService;->makeBytesUrlSafe([B)Ljava/lang/String;

    move-result-object v4

    .line 2172
    .local v4, "urlSafeSignature":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    const-string v5, "&"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Expires="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&Signature="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&Key-Pair-Id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2177
    .local v3, "signedUrl":Ljava/lang/String;
    return-object v3

    .line 2172
    .end local v3    # "signedUrl":Ljava/lang/String;
    :cond_0
    const-string v5, "?"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2178
    .end local v0    # "cannedPolicy":Ljava/lang/String;
    .end local v2    # "signatureBytes":[B
    .end local v4    # "urlSafeSignature":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2179
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 2180
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 2181
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v5, v1}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v5
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
    .line 230
    invoke-virtual {p0}, Lorg/jets3t/service/CloudFrontService;->getCurrentTimeWithOffset()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lorg/jets3t/service/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "date":Ljava/lang/String;
    const-string v3, "Date"

    invoke-interface {p1, v3, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lorg/jets3t/service/CloudFrontService;->getAWSCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jets3t/service/security/ProviderCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/jets3t/service/utils/ServiceUtils;->signWithHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "signature":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AWS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jets3t/service/CloudFrontService;->getAWSCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "authorizationString":Ljava/lang/String;
    const-string v3, "Authorization"

    invoke-interface {p1, v3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method protected buildDistributionConfigXmlDocument(ZLorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "isStreamingDistribution"    # Z
    .param p2, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p3, "callerReference"    # Ljava/lang/String;
    .param p4, "cnames"    # [Ljava/lang/String;
    .param p5, "comment"    # Ljava/lang/String;
    .param p6, "enabled"    # Z
    .param p7, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .param p8, "trustedSignerSelf"    # Z
    .param p9, "trustedSignerAwsAccountNumbers"    # [Ljava/lang/String;
    .param p10, "requiredProtocols"    # [Ljava/lang/String;
    .param p11, "defaultRootObject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 592
    if-eqz p1, :cond_0

    const-string v5, "StreamingDistributionConfig"

    :goto_0
    invoke-static {v5}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    const-string v6, "xmlns"

    const-string v7, "http://cloudfront.amazonaws.com/doc/2010-11-01/"

    invoke-virtual {v5, v6, v7}, Lcom/jamesmurty/utils/XMLBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    .line 595
    .local v1, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    invoke-virtual {p0, p2}, Lorg/jets3t/service/CloudFrontService;->buildOrigin(Lorg/jets3t/service/model/cloudfront/Origin;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/jamesmurty/utils/XMLBuilder;->importXMLBuilder(Lcom/jamesmurty/utils/XMLBuilder;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 596
    const-string v5, "CallerReference"

    invoke-virtual {v1, v5}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    .line 597
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p4

    if-ge v2, v5, :cond_1

    .line 598
    const-string v5, "CNAME"

    invoke-virtual {v1, v5}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    aget-object v6, p4, v2

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 592
    .end local v1    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v2    # "i":I
    :cond_0
    const-string v5, "DistributionConfig"

    goto :goto_0

    .line 600
    .restart local v1    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .restart local v2    # "i":I
    :cond_1
    const-string v5, "Comment"

    invoke-virtual {v1, v5}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    const-string v6, "Enabled"

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 603
    if-eqz p11, :cond_2

    .line 604
    const-string v5, "DefaultRootObject"

    invoke-virtual {v1, v5}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    move-object/from16 v0, p11

    invoke-virtual {v5, v0}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    .line 606
    :cond_2
    if-nez p8, :cond_3

    if-eqz p9, :cond_6

    move-object/from16 v0, p9

    array-length v5, v0

    if-lez v5, :cond_6

    .line 610
    :cond_3
    const-string v5, "TrustedSigners"

    invoke-virtual {v1, v5}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v4

    .line 611
    .local v4, "trustedSigners":Lcom/jamesmurty/utils/XMLBuilder;
    if-eqz p8, :cond_4

    .line 612
    const-string v5, "Self"

    invoke-virtual {v4, v5}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 614
    :cond_4
    const/4 v2, 0x0

    .line 616
    :goto_2
    if-eqz p9, :cond_5

    move-object/from16 v0, p9

    array-length v5, v0

    if-ge v2, v5, :cond_5

    .line 619
    const-string v5, "AWSAccountNumber"

    invoke-virtual {v4, v5}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    aget-object v6, p9, v2

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 617
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 622
    :cond_5
    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    .line 624
    .end local v4    # "trustedSigners":Lcom/jamesmurty/utils/XMLBuilder;
    :cond_6
    if-eqz p7, :cond_7

    .line 625
    const-string v5, "Logging"

    invoke-virtual {v1, v5}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    const-string v6, "Bucket"

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {p7}, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->getBucket()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    const-string v6, "Prefix"

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {p7}, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    .line 630
    :cond_7
    if-eqz p10, :cond_8

    move-object/from16 v0, p10

    array-length v5, v0

    if-lez v5, :cond_8

    .line 631
    const-string v5, "RequiredProtocols"

    invoke-virtual {v1, v5}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v3

    .line 632
    .local v3, "rpsBuilder":Lcom/jamesmurty/utils/XMLBuilder;
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p10

    array-length v5, v0

    if-ge v2, v5, :cond_8

    .line 633
    const-string v5, "Protocol"

    invoke-virtual {v3, v5}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    aget-object v6, p10, v2

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    .line 632
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 636
    .end local v3    # "rpsBuilder":Lcom/jamesmurty/utils/XMLBuilder;
    :cond_8
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/jamesmurty/utils/XMLBuilder;->asString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected buildOrigin(Lorg/jets3t/service/model/cloudfront/Origin;)Lcom/jamesmurty/utils/XMLBuilder;
    .locals 5
    .param p1, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 548
    instance-of v2, p1, Lorg/jets3t/service/model/cloudfront/S3Origin;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 549
    check-cast v1, Lorg/jets3t/service/model/cloudfront/S3Origin;

    .line 550
    .local v1, "o":Lorg/jets3t/service/model/cloudfront/S3Origin;
    const-string v2, "S3Origin"

    invoke-static {v2}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    const-string v3, "DNSName"

    invoke-virtual {v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/Origin;->getDnsName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jets3t/service/CloudFrontService;->sanitizeS3BucketName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 552
    .local v0, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    invoke-virtual {v1}, Lorg/jets3t/service/model/cloudfront/S3Origin;->getOriginAccessIdentity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 553
    const-string v2, "OriginAccessIdentity"

    invoke-virtual {v0, v2}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jets3t/service/model/cloudfront/S3Origin;->getOriginAccessIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 558
    .end local v0    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v1    # "o":Lorg/jets3t/service/model/cloudfront/S3Origin;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v1, p1

    .line 557
    check-cast v1, Lorg/jets3t/service/model/cloudfront/CustomOrigin;

    .line 558
    .local v1, "o":Lorg/jets3t/service/model/cloudfront/CustomOrigin;
    const-string v2, "CustomOrigin"

    invoke-static {v2}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    const-string v3, "DNSName"

    invoke-virtual {v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/Origin;->getDnsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    const-string v3, "HTTPPort"

    invoke-virtual {v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->getHttpPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    const-string v3, "HTTPSPort"

    invoke-virtual {v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->getHttpsPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    const-string v3, "OriginProtocolPolicy"

    invoke-virtual {v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->getOriginProtocolPolicy()Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->toText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public createDistribution(Lorg/jets3t/service/model/cloudfront/DistributionConfig;)Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 11
    .param p1, "config"    # Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getOrigin()Lorg/jets3t/service/model/cloudfront/Origin;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getCallerReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getCNAMEs()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->isEnabled()Z

    move-result v5

    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getLoggingStatus()Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    move-result-object v6

    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->isTrustedSignerSelf()Z

    move-result v7

    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getTrustedSignerAwsAccountNumbers()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getRequiredProtocols()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getDefaultRootObject()Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/jets3t/service/CloudFrontService;->createDistribution(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Distribution;

    move-result-object v0

    return-object v0
.end method

.method public createDistribution(Lorg/jets3t/service/model/cloudfront/Origin;)Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 7
    .param p1, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 785
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/CloudFrontService;->createDistribution(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;)Lorg/jets3t/service/model/cloudfront/Distribution;

    move-result-object v0

    return-object v0
.end method

.method public createDistribution(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;)Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 11
    .param p1, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p2, "callerReference"    # Ljava/lang/String;
    .param p3, "cnames"    # [Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .param p6, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 820
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lorg/jets3t/service/CloudFrontService;->createDistribution(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Distribution;

    move-result-object v0

    return-object v0
.end method

.method public createDistribution(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 12
    .param p1, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p2, "callerReference"    # Ljava/lang/String;
    .param p3, "cnames"    # [Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .param p6, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .param p7, "trustedSignerSelf"    # Z
    .param p8, "trustedSignerAwsAccountNumbers"    # [Ljava/lang/String;
    .param p9, "requiredProtocols"    # [Ljava/lang/String;
    .param p10, "defaultRootObject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 764
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lorg/jets3t/service/CloudFrontService;->createDistributionImpl(ZLorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Distribution;

    move-result-object v0

    return-object v0
.end method

.method protected createDistributionImpl(ZLorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 8
    .param p1, "isStreaming"    # Z
    .param p2, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p3, "callerReference"    # Ljava/lang/String;
    .param p4, "cnames"    # [Ljava/lang/String;
    .param p5, "comment"    # Ljava/lang/String;
    .param p6, "enabled"    # Z
    .param p7, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .param p8, "trustedSignerSelf"    # Z
    .param p9, "trustedSignerAwsAccountNumbers"    # [Ljava/lang/String;
    .param p10, "requiredProtocols"    # [Ljava/lang/String;
    .param p11, "defaultRootObject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 664
    sget-object v5, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 665
    sget-object v6, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_4

    const-string v5, "streaming"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " distribution for origin: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 671
    :cond_0
    if-nez p3, :cond_1

    .line 672
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 674
    :cond_1
    if-nez p4, :cond_2

    .line 675
    const/4 v5, 0x0

    new-array p4, v5, [Ljava/lang/String;

    .line 677
    :cond_2
    if-nez p5, :cond_3

    .line 678
    const-string p5, ""

    .line 681
    :cond_3
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://cloudfront.amazonaws.com/2010-11-01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_5

    const-string v5, "/streaming-distribution"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 685
    .local v3, "httpMethod":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    invoke-virtual/range {p0 .. p11}, Lorg/jets3t/service/CloudFrontService;->buildDistributionConfigXmlDocument(ZLorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "distributionConfigXml":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v6, "text/xml"

    sget-object v7, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, v0, v6, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 695
    const/16 v5, 0xc9

    invoke-virtual {p0, v3, v5}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 697
    .local v4, "response":Lorg/apache/http/HttpResponse;
    new-instance v5, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v6, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v5, v6}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseDistributionResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;

    move-result-object v2

    .line 701
    .local v2, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;
    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->getDistribution()Lorg/jets3t/service/model/cloudfront/Distribution;
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    return-object v5

    .line 665
    .end local v0    # "distributionConfigXml":Ljava/lang/String;
    .end local v2    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;
    .end local v3    # "httpMethod":Lorg/apache/http/client/methods/HttpPost;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    const-string v5, ""

    goto/16 :goto_0

    .line 681
    :cond_5
    const-string v5, "/distribution"

    goto :goto_1

    .line 702
    .restart local v3    # "httpMethod":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v1

    .line 703
    .local v1, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v1

    .line 704
    .end local v1    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v1

    .line 705
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 706
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 707
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v5, v1}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public createOriginAccessIdentity(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;
    .locals 9
    .param p1, "callerReference"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1537
    sget-object v5, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1538
    sget-object v5, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Creating origin access identity"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1541
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v5, "https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront"

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1544
    .local v3, "httpMethod":Lorg/apache/http/client/methods/HttpPost;
    if-nez p1, :cond_1

    .line 1545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1549
    :cond_1
    :try_start_0
    const-string v5, "CloudFrontOriginAccessIdentityConfig"

    invoke-static {v5}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    const-string v6, "xmlns"

    const-string v7, "http://cloudfront.amazonaws.com/doc/2010-11-01/"

    invoke-virtual {v5, v6, v7}, Lcom/jamesmurty/utils/XMLBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    const-string v6, "CallerReference"

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    const-string v6, "Comment"

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 1555
    .local v0, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/jamesmurty/utils/XMLBuilder;->asString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/xml"

    sget-object v8, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1559
    const/16 v5, 0xc9

    invoke-virtual {p0, v3, v5}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 1561
    .local v4, "response":Lorg/apache/http/HttpResponse;
    new-instance v5, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v6, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v5, v6}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseOriginAccessIdentity(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;

    move-result-object v2

    .line 1565
    .local v2, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;
    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->getOriginAccessIdentity()Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    return-object v5

    .line 1566
    .end local v0    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v2    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 1567
    .local v1, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v1

    .line 1568
    .end local v1    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v1

    .line 1569
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 1570
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 1571
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v5, v1}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public createStreamingDistribution(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;)Lorg/jets3t/service/model/cloudfront/StreamingDistribution;
    .locals 12
    .param p1, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p2, "callerReference"    # Ljava/lang/String;
    .param p3, "cnames"    # [Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .param p6, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 931
    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Lorg/jets3t/service/CloudFrontService;->createDistributionImpl(ZLorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Distribution;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    return-object v0
.end method

.method public createStreamingDistribution(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/StreamingDistribution;
    .locals 12
    .param p1, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p2, "callerReference"    # Ljava/lang/String;
    .param p3, "cnames"    # [Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .param p6, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .param p7, "trustedSignerSelf"    # Z
    .param p8, "trustedSignerAwsAccountNumbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 894
    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v11}, Lorg/jets3t/service/CloudFrontService;->createDistributionImpl(ZLorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Distribution;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    return-object v0
.end method

.method public deleteDistribution(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1491
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/CloudFrontService;->deleteDistributionImpl(ZLjava/lang/String;)V

    .line 1492
    return-void
.end method

.method protected deleteDistributionImpl(ZLjava/lang/String;)V
    .locals 7
    .param p1, "isStreaming"    # Z
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1444
    sget-object v4, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1445
    sget-object v5, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_1

    const-string v4, "streaming"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "distribution with id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1451
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lorg/jets3t/service/CloudFrontService;->getStreamingDistributionConfig(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;

    move-result-object v0

    .line 1453
    .local v0, "currentConfig":Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    :goto_1
    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://cloudfront.amazonaws.com/2010-11-01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_3

    const-string v4, "/streaming-distribution/"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 1458
    .local v2, "httpMethod":Lorg/apache/http/client/methods/HttpDelete;
    :try_start_0
    const-string v4, "If-Match"

    invoke-virtual {v0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getEtag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpDelete;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const/16 v4, 0xcc

    invoke-virtual {p0, v2, v4}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1460
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v3}, Lorg/jets3t/service/CloudFrontService;->releaseConnection(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1468
    return-void

    .line 1445
    .end local v0    # "currentConfig":Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .end local v2    # "httpMethod":Lorg/apache/http/client/methods/HttpDelete;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 1451
    :cond_2
    invoke-virtual {p0, p2}, Lorg/jets3t/service/CloudFrontService;->getDistributionConfig(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v0

    goto :goto_1

    .line 1453
    .restart local v0    # "currentConfig":Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    :cond_3
    const-string v4, "/distribution/"

    goto :goto_2

    .line 1461
    .restart local v2    # "httpMethod":Lorg/apache/http/client/methods/HttpDelete;
    :catch_0
    move-exception v1

    .line 1462
    .local v1, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v1

    .line 1463
    .end local v1    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v1

    .line 1464
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 1465
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 1466
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v4, v1}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public deleteOriginAccessIdentity(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1752
    sget-object v4, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1753
    sget-object v4, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting origin access identity with id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1757
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jets3t/service/CloudFrontService;->getOriginAccessIdentityConfig(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    move-result-object v0

    .line 1759
    .local v0, "currentConfig":Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;
    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 1763
    .local v2, "httpMethod":Lorg/apache/http/client/methods/HttpDelete;
    :try_start_0
    const-string v4, "If-Match"

    invoke-virtual {v0}, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->getEtag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpDelete;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    const/16 v4, 0xcc

    invoke-virtual {p0, v2, v4}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1765
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v3}, Lorg/jets3t/service/CloudFrontService;->releaseConnection(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1773
    return-void

    .line 1766
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 1767
    .local v1, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v1

    .line 1768
    .end local v1    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v1

    .line 1769
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 1770
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 1771
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v4, v1}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public deleteStreamingDistribution(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1515
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/CloudFrontService;->deleteDistributionImpl(ZLjava/lang/String;)V

    .line 1516
    return-void
.end method

.method public disableDistributionForDeletion(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1407
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "Disabled prior to deletion"

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/CloudFrontService;->updateDistributionConfig(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    .line 1408
    return-void
.end method

.method public disableStreamingDistributionForDeletion(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1429
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "Disabled prior to deletion"

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/CloudFrontService;->updateStreamingDistributionConfig(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;)Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;

    .line 1433
    return-void
.end method

.method public getAWSCredentials()Lorg/jets3t/service/security/ProviderCredentials;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    return-object v0
.end method

.method protected getCurrentTimeWithOffset()Ljava/util/Date;
    .locals 5

    .prologue
    .line 219
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/jets3t/service/CloudFrontService;->timeOffset:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDistributionConfig(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1058
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/CloudFrontService;->getDistributionConfigImpl(ZLjava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getDistributionConfigImpl(ZLjava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .locals 8
    .param p1, "isStreaming"    # Z
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1014
    sget-object v5, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1015
    sget-object v6, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting configuration for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_1

    const-string v5, "streaming"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " distribution with id: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1019
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://cloudfront.amazonaws.com/2010-11-01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_2

    const-string v5, "/streaming-distribution/"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v3, "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    const/16 v5, 0xc8

    :try_start_0
    invoke-virtual {p0, v3, v5}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 1025
    .local v4, "response":Lorg/apache/http/HttpResponse;
    new-instance v5, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v6, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v5, v6}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseDistributionConfigResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;

    move-result-object v2

    .line 1029
    .local v2, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;
    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->getDistributionConfig()Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v0

    .line 1030
    .local v0, "config":Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    const-string v5, "ETag"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->setEtag(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1031
    return-object v0

    .line 1015
    .end local v0    # "config":Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .end local v2    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;
    .end local v3    # "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 1019
    :cond_2
    const-string v5, "/distribution/"

    goto :goto_1

    .line 1032
    .restart local v3    # "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v1

    .line 1033
    .local v1, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v1

    .line 1034
    .end local v1    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v1

    .line 1035
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 1036
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 1037
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v5, v1}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getDistributionInfo(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 983
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/CloudFrontService;->getDistributionInfoImpl(ZLjava/lang/String;)Lorg/jets3t/service/model/cloudfront/Distribution;

    move-result-object v0

    return-object v0
.end method

.method protected getDistributionInfoImpl(ZLjava/lang/String;)Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 7
    .param p1, "isStreaming"    # Z
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 945
    sget-object v4, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 946
    sget-object v5, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getting information for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_1

    const-string v4, "streaming"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " distribution with id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 950
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://cloudfront.amazonaws.com/2010-11-01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_2

    const-string v4, "/streaming-distribution/"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 955
    .local v2, "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    const/16 v4, 0xc8

    :try_start_0
    invoke-virtual {p0, v2, v4}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 956
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v5, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v4, v5}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseDistributionResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;

    move-result-object v1

    .line 960
    .local v1, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;
    invoke-virtual {v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->getDistribution()Lorg/jets3t/service/model/cloudfront/Distribution;
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    return-object v4

    .line 946
    .end local v1    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;
    .end local v2    # "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 950
    :cond_2
    const-string v4, "/distribution/"

    goto :goto_1

    .line 961
    .restart local v2    # "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v0

    .line 963
    .end local v0    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 965
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v4, v0}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getInvalidation(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Invalidation;
    .locals 6
    .param p1, "distributionId"    # Ljava/lang/String;
    .param p2, "invalidationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1855
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://cloudfront.amazonaws.com/2010-11-01/distribution/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/invalidation/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1858
    .local v2, "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    const/16 v4, 0xc8

    :try_start_0
    invoke-virtual {p0, v2, v4}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1860
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v5, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v4, v5}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseInvalidationResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;

    move-result-object v1

    .line 1863
    .local v1, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;
    invoke-virtual {v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;->getInvalidation()Lorg/jets3t/service/model/cloudfront/Invalidation;
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    return-object v4

    .line 1864
    .end local v1    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 1865
    .local v0, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v0

    .line 1866
    .end local v0    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v0

    .line 1867
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 1868
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1869
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v4, v0}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getOriginAccessIdentity(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1621
    sget-object v4, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1622
    sget-object v4, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getting information for origin access identity with id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1624
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1628
    .local v2, "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    const/16 v4, 0xc8

    :try_start_0
    invoke-virtual {p0, v2, v4}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1630
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v5, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v4, v5}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseOriginAccessIdentity(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;

    move-result-object v1

    .line 1633
    .local v1, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;
    invoke-virtual {v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->getOriginAccessIdentity()Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    return-object v4

    .line 1634
    .end local v1    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 1635
    .local v0, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v0

    .line 1636
    .end local v0    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v0

    .line 1637
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 1638
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1639
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v4, v0}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getOriginAccessIdentityConfig(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1657
    sget-object v5, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1658
    sget-object v5, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting config for origin access identity with id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1660
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1664
    .local v3, "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    const/16 v5, 0xc8

    :try_start_0
    invoke-virtual {p0, v3, v5}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 1666
    .local v4, "response":Lorg/apache/http/HttpResponse;
    new-instance v5, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v6, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v5, v6}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseOriginAccessIdentityConfig(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;

    move-result-object v2

    .line 1670
    .local v2, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;
    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->getOriginAccessIdentityConfig()Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    move-result-object v0

    .line 1671
    .local v0, "config":Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;
    const-string v5, "ETag"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->setEtag(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1672
    return-object v0

    .line 1673
    .end local v0    # "config":Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;
    .end local v2    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 1674
    .local v1, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v1

    .line 1675
    .end local v1    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v1

    .line 1676
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 1677
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 1678
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v5, v1}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getOriginAccessIdentityList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1586
    sget-object v4, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1587
    sget-object v4, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Getting list of origin access identities"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1589
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1592
    .local v2, "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    const/16 v4, 0xc8

    :try_start_0
    invoke-virtual {p0, v2, v4}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1594
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v5, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v4, v5}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseOriginAccessIdentityListResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;

    move-result-object v1

    .line 1597
    .local v1, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;
    invoke-virtual {v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->getOriginAccessIdentityList()Ljava/util/List;
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    return-object v4

    .line 1598
    .end local v1    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 1599
    .local v0, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v0

    .line 1600
    .end local v0    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v0

    .line 1601
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 1602
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1603
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v4, v0}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getStreamingDistributionConfig(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1078
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/CloudFrontService;->getDistributionConfigImpl(ZLjava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;

    return-object v0
.end method

.method public getStreamingDistributionInfo(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/StreamingDistribution;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1001
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/CloudFrontService;->getDistributionInfoImpl(ZLjava/lang/String;)Lorg/jets3t/service/model/cloudfront/Distribution;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    return-object v0
.end method

.method protected initHttpConnection()Lorg/apache/http/client/HttpClient;
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    iget-object v1, p0, Lorg/jets3t/service/CloudFrontService;->invokingApplicationDescription:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/CloudFrontService;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    invoke-static {p0, v0, v1, v2}, Lorg/jets3t/service/utils/RestUtils;->initHttpConnection(Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;Lorg/jets3t/service/Jets3tProperties;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method protected initializeDefaults()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "networkaddress.cache.ttl"

    const-string v1, "300"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    const-string v0, "networkaddress.cache.negative.ttl"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lorg/jets3t/service/CloudFrontService;->initHttpConnection()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/CloudFrontService;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 162
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontService;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 163
    invoke-virtual {p0}, Lorg/jets3t/service/CloudFrontService;->initializeProxy()V

    .line 164
    return-void
.end method

.method protected initializeProxy()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 176
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-autodetect"

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontService;->httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-static {v0, v1}, Lorg/jets3t/service/utils/RestUtils;->initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;)V

    .line 187
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-host"

    invoke-virtual {v0, v1, v8}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "proxyHostAddress":Ljava/lang/String;
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-port"

    const/4 v7, -0x1

    invoke-virtual {v0, v1, v7}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    .line 181
    .local v3, "proxyPort":I
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-user"

    invoke-virtual {v0, v1, v8}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "proxyUser":Ljava/lang/String;
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-password"

    invoke-virtual {v0, v1, v8}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "proxyPassword":Ljava/lang/String;
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-domain"

    invoke-virtual {v0, v1, v8}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "proxyDomain":Ljava/lang/String;
    iget-object v0, p0, Lorg/jets3t/service/CloudFrontService;->httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-static/range {v0 .. v6}, Lorg/jets3t/service/utils/RestUtils;->initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public invalidateObjects(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Invalidation;
    .locals 15
    .param p1, "distributionId"    # Ljava/lang/String;
    .param p2, "objectKeys"    # [Ljava/lang/String;
    .param p3, "callerReference"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1790
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://cloudfront.amazonaws.com/2010-11-01/distribution/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/invalidation"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1793
    .local v6, "httpMethod":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    const-string v11, "InvalidationBatch"

    invoke-static {v11}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v2

    .line 1794
    .local v2, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    move-object/from16 v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v9, v1, v7

    .line 1795
    .local v9, "objectPath":Ljava/lang/String;
    const-string v11, "/"

    invoke-static {v9, v11}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1796
    .local v4, "encodedPath":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1797
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1799
    :cond_0
    const-string v11, "Path"

    invoke-virtual {v2, v11}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 1794
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1801
    .end local v4    # "encodedPath":Ljava/lang/String;
    .end local v9    # "objectPath":Ljava/lang/String;
    :cond_1
    const-string v11, "CallerReference"

    invoke-virtual {v2, v11}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 1803
    new-instance v11, Lorg/apache/http/entity/StringEntity;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/jamesmurty/utils/XMLBuilder;->asString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "text/xml"

    sget-object v14, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1807
    const/16 v11, 0xc9

    invoke-virtual {p0, v6, v11}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 1809
    .local v10, "response":Lorg/apache/http/HttpResponse;
    new-instance v11, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v12, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v11, v12}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseInvalidationResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;

    move-result-object v5

    .line 1812
    .local v5, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;
    invoke-virtual {v5}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;->getInvalidation()Lorg/jets3t/service/model/cloudfront/Invalidation;
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    return-object v11

    .line 1813
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v5    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v3

    .line 1814
    .local v3, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v3

    .line 1815
    .end local v3    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v3

    .line 1816
    .local v3, "e":Ljava/lang/RuntimeException;
    throw v3

    .line 1817
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v3

    .line 1818
    .local v3, "e":Ljava/lang/Exception;
    new-instance v11, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v11, v3}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method public invalidateObjects(Ljava/lang/String;[Lorg/jets3t/service/model/S3Object;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Invalidation;
    .locals 3
    .param p1, "distributionId"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;
    .param p3, "callerReference"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1838
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 1839
    .local v1, "objectKeys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 1840
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lorg/jets3t/service/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1842
    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Lorg/jets3t/service/CloudFrontService;->invalidateObjects(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/Invalidation;

    move-result-object v2

    return-object v2
.end method

.method public listDistributions()[Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 443
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/jets3t/service/CloudFrontService;->listDistributions(I)[Lorg/jets3t/service/model/cloudfront/Distribution;

    move-result-object v0

    return-object v0
.end method

.method public listDistributions(I)[Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 2
    .param p1, "pagingSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/jets3t/service/CloudFrontService;->listDistributionsImpl(ZI)Ljava/util/List;

    move-result-object v0

    .line 411
    .local v0, "distributions":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/Distribution;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/cloudfront/Distribution;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/cloudfront/Distribution;

    return-object v1
.end method

.method public listDistributions(Ljava/lang/String;)[Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 510
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/jets3t/service/CloudFrontService;->listDistributionsByBucketName(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 511
    .local v0, "bucketDistributions":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/Distribution;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/cloudfront/Distribution;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/cloudfront/Distribution;

    return-object v1
.end method

.method public listDistributionsByBucketName(ZLjava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "isStreaming"    # Z
    .param p2, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/Distribution;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 472
    iget-object v6, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v7, "s3service.s3-endpoint"

    sget-object v8, Lorg/jets3t/service/Constants;->S3_DEFAULT_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "s3Endpoint":Ljava/lang/String;
    sget-object v6, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 475
    sget-object v7, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Listing "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_2

    const-string v6, "streaming"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " distributions for the S3 bucket \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\' for AWS user: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jets3t/service/CloudFrontService;->getAWSCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 480
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v1, "bucketDistributions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jets3t/service/model/cloudfront/Distribution;>;"
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/jets3t/service/CloudFrontService;->listStreamingDistributions()[Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    move-result-object v0

    .line 483
    .local v0, "allDistributions":[Lorg/jets3t/service/model/cloudfront/Distribution;
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_6

    .line 484
    aget-object v6, v0, v2

    invoke-virtual {v6}, Lorg/jets3t/service/model/cloudfront/Distribution;->getOrigin()Lorg/jets3t/service/model/cloudfront/Origin;

    move-result-object v3

    .line 485
    .local v3, "origin":Lorg/jets3t/service/model/cloudfront/Origin;
    instance-of v6, v3, Lorg/jets3t/service/model/cloudfront/S3Origin;

    if-nez v6, :cond_4

    .line 483
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 475
    .end local v0    # "allDistributions":[Lorg/jets3t/service/model/cloudfront/Distribution;
    .end local v1    # "bucketDistributions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jets3t/service/model/cloudfront/Distribution;>;"
    .end local v2    # "i":I
    .end local v3    # "origin":Lorg/jets3t/service/model/cloudfront/Origin;
    :cond_2
    const-string v6, ""

    goto :goto_0

    .line 481
    .restart local v1    # "bucketDistributions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jets3t/service/model/cloudfront/Distribution;>;"
    :cond_3
    invoke-virtual {p0}, Lorg/jets3t/service/CloudFrontService;->listDistributions()[Lorg/jets3t/service/model/cloudfront/Distribution;

    move-result-object v0

    goto :goto_1

    .restart local v0    # "allDistributions":[Lorg/jets3t/service/model/cloudfront/Distribution;
    .restart local v2    # "i":I
    .restart local v3    # "origin":Lorg/jets3t/service/model/cloudfront/Origin;
    :cond_4
    move-object v5, v3

    .line 488
    check-cast v5, Lorg/jets3t/service/model/cloudfront/S3Origin;

    .line 489
    .local v5, "s3Origin":Lorg/jets3t/service/model/cloudfront/S3Origin;
    invoke-virtual {v5}, Lorg/jets3t/service/model/cloudfront/S3Origin;->getDnsName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Lorg/jets3t/service/model/cloudfront/S3Origin;->getDnsName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/jets3t/service/utils/ServiceUtils;->findBucketNameInHostname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 492
    :cond_5
    aget-object v6, v0, v2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 495
    .end local v3    # "origin":Lorg/jets3t/service/model/cloudfront/Origin;
    .end local v5    # "s3Origin":Lorg/jets3t/service/model/cloudfront/S3Origin;
    :cond_6
    return-object v1
.end method

.method protected listDistributionsImpl(ZI)Ljava/util/List;
    .locals 11
    .param p1, "isStreaming"    # Z
    .param p2, "pagingSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/Distribution;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 353
    sget-object v8, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 354
    sget-object v9, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Listing "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p1, :cond_3

    const-string v8, "streaming"

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " distributions for AWS user: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/jets3t/service/CloudFrontService;->getAWSCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v10

    invoke-virtual {v10}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 359
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v0, "distributions":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/Distribution;>;"
    const/4 v5, 0x0

    .line 361
    .local v5, "nextMarker":Ljava/lang/String;
    const/4 v4, 0x1

    .line 363
    .local v4, "incompleteListing":Z
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://cloudfront.amazonaws.com/2010-11-01"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_4

    const-string v8, "/streaming-distribution"

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?MaxItems="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 366
    .local v7, "uri":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 367
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&Marker="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 369
    :cond_2
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 370
    .local v3, "httpMethod":Lorg/apache/http/client/methods/HttpRequestBase;
    const/16 v8, 0xc8

    invoke-virtual {p0, v3, v8}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 372
    .local v6, "response":Lorg/apache/http/HttpResponse;
    new-instance v8, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v9, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v8, v9}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseDistributionListResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;

    move-result-object v2

    .line 375
    .local v2, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;
    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->getDistributions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->isTruncated()Z

    move-result v4

    .line 378
    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->getNextMarker()Ljava/lang/String;

    move-result-object v5

    .line 381
    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    .line 382
    new-instance v8, Lorg/jets3t/service/CloudFrontServiceException;

    const-string v9, "Unable to retrieve paginated DistributionList results without a valid NextMarker value."

    invoke-direct {v8, v9}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 388
    .end local v0    # "distributions":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/Distribution;>;"
    .end local v2    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;
    .end local v3    # "httpMethod":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v4    # "incompleteListing":Z
    .end local v5    # "nextMarker":Ljava/lang/String;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v1

    .line 354
    .end local v1    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :cond_3
    const-string v8, ""

    goto/16 :goto_0

    .line 363
    .restart local v0    # "distributions":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/Distribution;>;"
    .restart local v4    # "incompleteListing":Z
    .restart local v5    # "nextMarker":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v8, "/distribution"
    :try_end_1
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 385
    .restart local v2    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;
    .restart local v3    # "httpMethod":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_5
    if-nez v4, :cond_1

    .line 387
    return-object v0

    .line 390
    .end local v0    # "distributions":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/Distribution;>;"
    .end local v2    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;
    .end local v3    # "httpMethod":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v4    # "incompleteListing":Z
    .end local v5    # "nextMarker":Ljava/lang/String;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "uri":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 392
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v8, v1}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public listInvalidations(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "distributionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/InvalidationSummary;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1927
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1930
    .local v3, "invalidationSummaries":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/InvalidationSummary;>;"
    const/4 v4, 0x0

    .line 1931
    .local v4, "nextMarker":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1933
    .local v1, "incompleteListing":Z
    :cond_0
    const/16 v5, 0x64

    invoke-virtual {p0, p1, v4, v5}, Lorg/jets3t/service/CloudFrontService;->listInvalidations(Ljava/lang/String;Ljava/lang/String;I)Lorg/jets3t/service/model/cloudfront/InvalidationList;

    move-result-object v2

    .line 1935
    .local v2, "invalidationList":Lorg/jets3t/service/model/cloudfront/InvalidationList;
    invoke-virtual {v2}, Lorg/jets3t/service/model/cloudfront/InvalidationList;->getInvalidationSummaries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1937
    invoke-virtual {v2}, Lorg/jets3t/service/model/cloudfront/InvalidationList;->isTruncated()Z

    move-result v1

    .line 1938
    invoke-virtual {v2}, Lorg/jets3t/service/model/cloudfront/InvalidationList;->getNextMarker()Ljava/lang/String;

    move-result-object v4

    .line 1941
    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    .line 1942
    new-instance v5, Lorg/jets3t/service/CloudFrontServiceException;

    const-string v6, "Unable to retrieve paginated InvalidationList results without a valid NextMarker value."

    invoke-direct {v5, v6}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1948
    .end local v1    # "incompleteListing":Z
    .end local v2    # "invalidationList":Lorg/jets3t/service/model/cloudfront/InvalidationList;
    .end local v3    # "invalidationSummaries":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/InvalidationSummary;>;"
    .end local v4    # "nextMarker":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1949
    .local v0, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v0

    .line 1945
    .end local v0    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    .restart local v1    # "incompleteListing":Z
    .restart local v2    # "invalidationList":Lorg/jets3t/service/model/cloudfront/InvalidationList;
    .restart local v3    # "invalidationSummaries":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/InvalidationSummary;>;"
    .restart local v4    # "nextMarker":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_0

    .line 1947
    return-object v3

    .line 1950
    .end local v1    # "incompleteListing":Z
    .end local v2    # "invalidationList":Lorg/jets3t/service/model/cloudfront/InvalidationList;
    .end local v3    # "invalidationSummaries":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/InvalidationSummary;>;"
    .end local v4    # "nextMarker":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1951
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 1952
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1953
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v5, v0}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public listInvalidations(Ljava/lang/String;Ljava/lang/String;I)Lorg/jets3t/service/model/cloudfront/InvalidationList;
    .locals 7
    .param p1, "distributionId"    # Ljava/lang/String;
    .param p2, "nextMarker"    # Ljava/lang/String;
    .param p3, "pagingSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1893
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://cloudfront.amazonaws.com/2010-11-01/distribution/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/invalidation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?MaxItems="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1896
    .local v4, "uri":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1897
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&Marker="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1899
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1900
    .local v2, "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    const/16 v5, 0xc8

    invoke-virtual {p0, v2, v5}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1902
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v5, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v6, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v5, v6}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseInvalidationListResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;

    move-result-object v1

    .line 1905
    .local v1, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;
    invoke-virtual {v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->getInvalidationList()Lorg/jets3t/service/model/cloudfront/InvalidationList;
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    return-object v5

    .line 1906
    .end local v1    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;
    .end local v2    # "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1907
    .local v0, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v0

    .line 1908
    .end local v0    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v0

    .line 1909
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 1910
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1911
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v5, v0}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public listStreamingDistributions()[Lorg/jets3t/service/model/cloudfront/StreamingDistribution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 455
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/jets3t/service/CloudFrontService;->listStreamingDistributions(I)[Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    move-result-object v0

    return-object v0
.end method

.method public listStreamingDistributions(I)[Lorg/jets3t/service/model/cloudfront/StreamingDistribution;
    .locals 2
    .param p1, "pagingSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lorg/jets3t/service/CloudFrontService;->listDistributionsImpl(ZI)Ljava/util/List;

    move-result-object v0

    .line 430
    .local v0, "distributions":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/Distribution;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    return-object v1
.end method

.method public listStreamingDistributions(Ljava/lang/String;)[Lorg/jets3t/service/model/cloudfront/StreamingDistribution;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 529
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lorg/jets3t/service/CloudFrontService;->listDistributionsByBucketName(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 530
    .local v0, "streamingDistributions":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/cloudfront/Distribution;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    return-object v1
.end method

.method protected performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;
    .locals 18
    .param p1, "httpMethod"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "expectedResponseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 265
    const-string v3, "Date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-nez v3, :cond_0

    .line 266
    const-string v3, "Date"

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/CloudFrontService;->getCurrentTimeWithOffset()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lorg/jets3t/service/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    const/16 v16, 0x0

    .line 271
    .local v16, "response":Lorg/apache/http/HttpResponse;
    const/4 v10, 0x1

    .line 272
    .local v10, "completedWithoutRecoverableError":Z
    const/4 v15, 0x0

    .line 276
    .local v15, "internalErrorCount":I
    :cond_1
    const/4 v10, 0x1

    .line 277
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jets3t/service/CloudFrontService;->authorizeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jets3t/service/CloudFrontService;->httpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 279
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 281
    .local v4, "responseCode":I
    move/from16 v0, p2

    if-eq v4, v0, :cond_2

    .line 282
    const/16 v3, 0x1f4

    if-ne v4, v3, :cond_4

    .line 284
    const-wide/16 v11, 0x3e8

    .line 285
    .local v11, "delayMs":J
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jets3t/service/CloudFrontService;->internalErrorRetryMax:I

    if-ge v15, v3, :cond_3

    .line 286
    sget-object v3, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CloudFront Internal Server error(s), will retry in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 288
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 289
    const/4 v10, 0x0

    .line 320
    .end local v11    # "delayMs":J
    :cond_2
    :goto_0
    if-eqz v10, :cond_1

    .line 328
    return-object v16

    .line 291
    .restart local v11    # "delayMs":J
    :cond_3
    new-instance v3, Lorg/jets3t/service/CloudFrontServiceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered too many CloudFront Internal Server errors ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), aborting request."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    .end local v4    # "responseCode":I
    .end local v11    # "delayMs":J
    :catch_0
    move-exception v13

    .line 322
    .local v13, "e":Lorg/jets3t/service/CloudFrontServiceException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/jets3t/service/CloudFrontService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 323
    throw v13

    .line 296
    .end local v13    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    .restart local v4    # "responseCode":I
    :cond_4
    :try_start_1
    new-instance v3, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v3, v5}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseErrorResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;

    move-result-object v14

    .line 300
    .local v14, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;
    new-instance v2, Lorg/jets3t/service/CloudFrontServiceException;

    const-string v3, "Request failed with CloudFront Service error"

    invoke-virtual {v14}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;->getDetail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;->getRequestId()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .local v2, "exception":Lorg/jets3t/service/CloudFrontServiceException;
    const-string v3, "RequestExpired"

    invoke-virtual {v2}, Lorg/jets3t/service/CloudFrontServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 308
    invoke-static {}, Lorg/jets3t/service/utils/RestUtils;->getAWSTimeAdjustment()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lorg/jets3t/service/CloudFrontService;->timeOffset:J

    .line 309
    sget-object v3, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 310
    sget-object v3, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjusted time offset in response to RequestExpired error. Local machine and CloudFront server disagree on the time by approximately "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/jets3t/service/CloudFrontService;->timeOffset:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds. Retrying connection."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 314
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 316
    :cond_6
    throw v2
    :try_end_1
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    .end local v2    # "exception":Lorg/jets3t/service/CloudFrontServiceException;
    .end local v4    # "responseCode":I
    .end local v14    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;
    :catch_1
    move-exception v17

    .line 325
    .local v17, "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/jets3t/service/CloudFrontService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 326
    new-instance v3, Lorg/jets3t/service/CloudFrontServiceException;

    const-string v5, "CloudFront Request failed"

    move-object/from16 v0, v17

    invoke-direct {v3, v5, v0}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateDistributionConfig(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/DistributionConfig;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1382
    invoke-virtual {p2}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getOrigin()Lorg/jets3t/service/model/cloudfront/Origin;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getCNAMEs()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->isEnabled()Z

    move-result v5

    invoke-virtual {p2}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getLoggingStatus()Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    move-result-object v6

    invoke-virtual {p2}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->isTrustedSignerSelf()Z

    move-result v7

    invoke-virtual {p2}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getTrustedSignerAwsAccountNumbers()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getRequiredProtocols()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getDefaultRootObject()Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lorg/jets3t/service/CloudFrontService;->updateDistributionConfig(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v0

    return-object v0
.end method

.method public updateDistributionConfig(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p3, "cnames"    # [Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .param p6, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1353
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lorg/jets3t/service/CloudFrontService;->updateDistributionConfig(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v0

    return-object v0
.end method

.method public updateDistributionConfig(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p3, "cnames"    # [Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .param p6, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .param p7, "trustedSignerSelf"    # Z
    .param p8, "trustedSignerAwsAccountNumbers"    # [Ljava/lang/String;
    .param p9, "requiredProtocols"    # [Ljava/lang/String;
    .param p10, "defaultRootObject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1215
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lorg/jets3t/service/CloudFrontService;->updateDistributionConfigImpl(ZLjava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v0

    return-object v0
.end method

.method protected updateDistributionConfigImpl(ZLjava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .locals 21
    .param p1, "isStreaming"    # Z
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p4, "cnames"    # [Ljava/lang/String;
    .param p5, "comment"    # Ljava/lang/String;
    .param p6, "enabled"    # Z
    .param p7, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .param p8, "trustedSignerSelf"    # Z
    .param p9, "trustedSignerAwsAccountNumbers"    # [Ljava/lang/String;
    .param p10, "requiredProtocols"    # [Ljava/lang/String;
    .param p11, "defaultRootObject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1104
    sget-object v2, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1105
    sget-object v3, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating configuration of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_4

    const-string v2, "streaming"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "distribution with id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1111
    :cond_0
    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/jets3t/service/CloudFrontService;->getStreamingDistributionConfig(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;

    move-result-object v19

    .line 1115
    .local v19, "oldConfig":Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    :goto_1
    if-nez p4, :cond_1

    .line 1116
    invoke-virtual/range {v19 .. v19}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getCNAMEs()[Ljava/lang/String;

    move-result-object p4

    .line 1118
    :cond_1
    if-nez p5, :cond_2

    .line 1119
    invoke-virtual/range {v19 .. v19}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getComment()Ljava/lang/String;

    move-result-object p5

    .line 1121
    :cond_2
    if-nez p3, :cond_3

    .line 1122
    invoke-virtual/range {v19 .. v19}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getOrigin()Lorg/jets3t/service/model/cloudfront/Origin;

    move-result-object p3

    .line 1125
    :cond_3
    new-instance v18, Lorg/apache/http/client/methods/HttpPut;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://cloudfront.amazonaws.com/2010-11-01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_6

    const-string v2, "/streaming-distribution/"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v18, "httpMethod":Lorg/apache/http/client/methods/HttpPut;
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getCallerReference()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lorg/jets3t/service/CloudFrontService;->buildDistributionConfigXmlDocument(ZLorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1135
    .local v15, "distributionConfigXml":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v3, "text/xml"

    sget-object v4, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v2, v15, v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1139
    const-string v2, "If-Match"

    invoke-virtual/range {v19 .. v19}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getEtag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const/16 v2, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 1142
    .local v20, "response":Lorg/apache/http/HttpResponse;
    new-instance v2, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v2, v3}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseDistributionConfigResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;

    move-result-object v17

    .line 1146
    .local v17, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;
    invoke-virtual/range {v17 .. v17}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->getDistributionConfig()Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v14

    .line 1147
    .local v14, "config":Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    const-string v2, "ETag"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->setEtag(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1148
    return-object v14

    .line 1105
    .end local v14    # "config":Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .end local v15    # "distributionConfigXml":Ljava/lang/String;
    .end local v17    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;
    .end local v18    # "httpMethod":Lorg/apache/http/client/methods/HttpPut;
    .end local v19    # "oldConfig":Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    const-string v2, ""

    goto/16 :goto_0

    .line 1111
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/jets3t/service/CloudFrontService;->getDistributionConfig(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v19

    goto/16 :goto_1

    .line 1125
    .restart local v19    # "oldConfig":Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    :cond_6
    const-string v2, "/distribution/"

    goto/16 :goto_2

    .line 1149
    .restart local v18    # "httpMethod":Lorg/apache/http/client/methods/HttpPut;
    :catch_0
    move-exception v16

    .line 1150
    .local v16, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v16

    .line 1151
    .end local v16    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v16

    .line 1152
    .local v16, "e":Ljava/lang/RuntimeException;
    throw v16

    .line 1153
    .end local v16    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v16

    .line 1154
    .local v16, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/jets3t/service/CloudFrontServiceException;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public updateOriginAccessIdentityConfig(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1698
    sget-object v7, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1699
    sget-object v7, Lorg/jets3t/service/CloudFrontService;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating configuration of origin access identity with id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1703
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jets3t/service/CloudFrontService;->getOriginAccessIdentityConfig(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    move-result-object v5

    .line 1706
    .local v5, "oldConfig":Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;
    if-nez p2, :cond_1

    .line 1707
    invoke-virtual {v5}, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->getComment()Ljava/lang/String;

    move-result-object p2

    .line 1710
    :cond_1
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/config"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 1714
    .local v4, "httpMethod":Lorg/apache/http/client/methods/HttpPut;
    :try_start_0
    const-string v7, "CloudFrontOriginAccessIdentityConfig"

    invoke-static {v7}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    const-string v8, "xmlns"

    const-string v9, "http://cloudfront.amazonaws.com/doc/2010-11-01/"

    invoke-virtual {v7, v8, v9}, Lcom/jamesmurty/utils/XMLBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    const-string v8, "CallerReference"

    invoke-virtual {v7, v8}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->getCallerReference()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    const-string v8, "Comment"

    invoke-virtual {v7, v8}, Lcom/jamesmurty/utils/XMLBuilder;->e(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/jamesmurty/utils/XMLBuilder;->t(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 1719
    .local v0, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    new-instance v7, Lorg/apache/http/entity/StringEntity;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/jamesmurty/utils/XMLBuilder;->asString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/xml"

    sget-object v10, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1723
    const-string v7, "If-Match"

    invoke-virtual {v5}, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->getEtag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const/16 v7, 0xc8

    invoke-virtual {p0, v4, v7}, Lorg/jets3t/service/CloudFrontService;->performRestRequest(Lorg/apache/http/client/methods/HttpRequestBase;I)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1726
    .local v6, "response":Lorg/apache/http/HttpResponse;
    new-instance v7, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v8, p0, Lorg/jets3t/service/CloudFrontService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct {v7, v8}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseOriginAccessIdentityConfig(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;

    move-result-object v3

    .line 1730
    .local v3, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;
    invoke-virtual {v3}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->getOriginAccessIdentityConfig()Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    move-result-object v1

    .line 1731
    .local v1, "config":Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;
    const-string v7, "ETag"

    invoke-interface {v6, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->setEtag(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jets3t/service/CloudFrontServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1732
    return-object v1

    .line 1733
    .end local v0    # "builder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v1    # "config":Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;
    .end local v3    # "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 1734
    .local v2, "e":Lorg/jets3t/service/CloudFrontServiceException;
    throw v2

    .line 1735
    .end local v2    # "e":Lorg/jets3t/service/CloudFrontServiceException;
    :catch_1
    move-exception v2

    .line 1736
    .local v2, "e":Ljava/lang/RuntimeException;
    throw v2

    .line 1737
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 1738
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/jets3t/service/CloudFrontServiceException;

    invoke-direct {v7, v2}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public updateStreamingDistributionConfig(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;)Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p3, "cnames"    # [Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .param p6, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1256
    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Lorg/jets3t/service/CloudFrontService;->updateDistributionConfigImpl(ZLjava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;

    return-object v0
.end method

.method public updateStreamingDistributionConfig(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p3, "cnames"    # [Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .param p6, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .param p7, "trustedSignerSelf"    # Z
    .param p8, "trustedSignerAwsAccountNumbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 1312
    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v11}, Lorg/jets3t/service/CloudFrontService;->updateDistributionConfigImpl(ZLjava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;

    return-object v0
.end method
