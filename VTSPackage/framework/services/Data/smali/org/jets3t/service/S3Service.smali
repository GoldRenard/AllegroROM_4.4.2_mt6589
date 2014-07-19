.class public abstract Lorg/jets3t/service/S3Service;
.super Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;
.source "S3Service.java"

# interfaces
.implements Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lorg/jets3t/service/S3Service;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method protected constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/S3Service;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;

    .prologue
    .line 127
    sget-object v0, Lorg/jets3t/service/Constants;->JETS3T_PROPERTIES_FILENAME:Ljava/lang/String;

    invoke-static {v0}, Lorg/jets3t/service/Jets3tProperties;->getInstance(Ljava/lang/String;)Lorg/jets3t/service/Jets3tProperties;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jets3t/service/S3Service;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/jets3t/service/Jets3tProperties;)V

    .line 129
    return-void
.end method

.method protected constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V
    .locals 0
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;
    .param p3, "credentialsProvider"    # Lorg/apache/http/client/CredentialsProvider;
    .param p4, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V

    .line 93
    return-void
.end method

.method protected constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/jets3t/service/Jets3tProperties;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;
    .param p3, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V

    .line 112
    return-void
.end method

.method public static buildPostForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1146
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v7}, Lorg/jets3t/service/S3Service;->buildPostForm(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildPostForm(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p3, "expiration"    # Ljava/util/Date;
    .param p4, "conditions"    # [Ljava/lang/String;
    .param p5, "inputFields"    # [Ljava/lang/String;
    .param p6, "textInput"    # Ljava/lang/String;
    .param p7, "isSecureHttp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1209
    const/4 v8, 0x0

    const-string v9, "Upload to Amazon S3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lorg/jets3t/service/S3Service;->buildPostForm(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildPostForm(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p3, "expiration"    # Ljava/util/Date;
    .param p4, "conditions"    # [Ljava/lang/String;
    .param p5, "inputFields"    # [Ljava/lang/String;
    .param p6, "textInput"    # Ljava/lang/String;
    .param p7, "isSecureHttp"    # Z
    .param p8, "usePathStyleUrl"    # Z
    .param p9, "submitButtonName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    .local v2, "myInputFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    .line 1289
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{\"expiration\": \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p3}, Lorg/jets3t/service/utils/ServiceUtils;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\", \"conditions\": ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-static {p4, v9}, Lorg/jets3t/service/utils/ServiceUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1292
    .local v4, "policyDocument":Ljava/lang/String;
    sget-object v8, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1293
    sget-object v8, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Policy document for POST form:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1297
    :cond_1
    sget-object v8, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v3

    .line 1299
    .local v3, "policyB64":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<input type=\"hidden\" name=\"policy\" value=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1303
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<input type=\"hidden\" name=\"AWSAccessKeyId\" value=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    :try_start_0
    invoke-virtual {p2}, Lorg/jets3t/service/security/ProviderCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lorg/jets3t/service/utils/ServiceUtils;->signWithHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1314
    .local v6, "signature":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<input type=\"hidden\" name=\"signature\" value=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    .end local v3    # "policyB64":Ljava/lang/String;
    .end local v4    # "policyDocument":Ljava/lang/String;
    .end local v6    # "signature":Ljava/lang/String;
    :cond_2
    if-eqz p5, :cond_3

    .line 1320
    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1324
    :cond_3
    if-eqz p6, :cond_5

    .line 1326
    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    :goto_0
    const/4 v7, 0x0

    .line 1335
    .local v7, "url":Ljava/lang/String;
    if-eqz p8, :cond_7

    .line 1336
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p7, :cond_6

    const-string v8, "s"

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "://s3.amazonaws.com/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1345
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<form action=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" method=\"post\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "enctype=\"multipart/form-data\">\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<input type=\"hidden\" name=\"key\" value=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\">\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-static {v2, v9}, Lorg/jets3t/service/utils/ServiceUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n<br>\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<input type=\"submit\" value=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\">\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</form>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1354
    .local v1, "form":Ljava/lang/String;
    sget-object v8, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1355
    sget-object v8, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "POST Form:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1357
    :cond_4
    return-object v1

    .line 1311
    .end local v1    # "form":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    .restart local v3    # "policyB64":Ljava/lang/String;
    .restart local v4    # "policyDocument":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1312
    .local v5, "se":Lorg/jets3t/service/ServiceException;
    new-instance v8, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v8, v5}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v8

    .line 1328
    .end local v3    # "policyB64":Ljava/lang/String;
    .end local v4    # "policyDocument":Ljava/lang/String;
    .end local v5    # "se":Lorg/jets3t/service/ServiceException;
    :cond_5
    const-string v8, "<input name=\"file\" type=\"file\">"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1336
    .restart local v7    # "url":Ljava/lang/String;
    :cond_6
    const-string v8, ""

    goto/16 :goto_1

    .line 1340
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p7, :cond_8

    const-string v8, "s"

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".s3.amazonaws.com/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_8
    const-string v8, ""

    goto :goto_3
.end method

.method public static createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;JZZZ)Ljava/lang/String;
    .locals 12
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "specialParamName"    # Ljava/lang/String;
    .param p5, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p6, "secondsSinceEpoch"    # J
    .param p8, "isVirtualHost"    # Z
    .param p9, "isHttps"    # Z
    .param p10, "isDnsBucketNamingDisabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jets3t/service/security/ProviderCredentials;",
            "JZZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 646
    .local p4, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;

    move-object/from16 v0, p5

    invoke-direct {v1, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;-><init>(Lorg/jets3t/service/security/ProviderCredentials;)V

    .local v1, "s3Service":Lorg/jets3t/service/S3Service;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 647
    invoke-virtual/range {v1 .. v11}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZZZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static generatePostPolicyCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "operation"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generatePostPolicyCondition_AllowAnyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\"starts-with\", \"$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generatePostPolicyCondition_Equality(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generatePostPolicyCondition_Equality(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1099
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {p1, v1}, Lorg/jets3t/service/utils/ServiceUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generatePostPolicyCondition_Equality(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {p1, v1}, Lorg/jets3t/service/utils/ServiceUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generatePostPolicyCondition_Range(II)Ljava/lang/String;
    .locals 2
    .param p0, "min"    # I
    .param p1, "max"    # I

    .prologue
    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\"content-length-range\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyVersionedObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/S3Object;Z)Ljava/util/Map;
    .locals 11
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "sourceBucketName"    # Ljava/lang/String;
    .param p3, "sourceObjectKey"    # Ljava/lang/String;
    .param p4, "destinationBucketName"    # Ljava/lang/String;
    .param p5, "destinationObject"    # Lorg/jets3t/service/model/S3Object;
    .param p6, "replaceMetadata"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/S3Object;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2237
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lorg/jets3t/service/S3Service;->copyVersionedObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/S3Object;ZLjava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public copyVersionedObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/S3Object;ZLjava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 17
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "sourceBucketName"    # Ljava/lang/String;
    .param p3, "sourceObjectKey"    # Ljava/lang/String;
    .param p4, "destinationBucketName"    # Ljava/lang/String;
    .param p5, "destinationObject"    # Lorg/jets3t/service/model/S3Object;
    .param p6, "replaceMetadata"    # Z
    .param p7, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p8, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p9, "ifMatchTags"    # [Ljava/lang/String;
    .param p10, "ifNoneMatchTags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/S3Object;",
            "Z",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2182
    :try_start_0
    const-string v2, "copyVersionedObject"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jets3t/service/StorageService;->assertAuthenticatedConnection(Ljava/lang/String;)V

    .line 2183
    if-eqz p6, :cond_0

    invoke-virtual/range {p5 .. p5}, Lorg/jets3t/service/model/StorageObject;->getModifiableMetadata()Ljava/util/Map;

    move-result-object v8

    .line 2186
    .local v8, "destinationMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectCopyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    invoke-virtual/range {p5 .. p5}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Lorg/jets3t/service/model/StorageObject;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Lorg/jets3t/service/model/StorageObject;->getStorageClass()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p5 .. p5}, Lorg/jets3t/service/model/StorageObject;->getServerSideEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p1

    invoke-virtual/range {v2 .. v15}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->copyObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/util/Map;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2183
    .end local v8    # "destinationMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 2192
    :catch_0
    move-exception v16

    .line 2193
    .local v16, "se":Lorg/jets3t/service/ServiceException;
    new-instance v2, Lorg/jets3t/service/S3ServiceException;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v2
.end method

.method public createBucket(Ljava/lang/String;)Lorg/jets3t/service/model/S3Bucket;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1491
    :try_start_0
    iget-object v1, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v2, "s3service.default-bucket-location"

    const-string v3, "US"

    invoke-virtual {v1, v2, v3}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lorg/jets3t/service/S3Service;->createBucket(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)Lorg/jets3t/service/model/S3Bucket;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public createBucket(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Bucket;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1582
    :try_start_0
    const-string v1, "createBucket"

    invoke-virtual {p0, v1}, Lorg/jets3t/service/StorageService;->assertAuthenticatedConnection(Ljava/lang/String;)V

    .line 1583
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/jets3t/service/StorageService;->createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/model/S3Bucket;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public createBucket(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)Lorg/jets3t/service/model/S3Bucket;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1544
    :try_start_0
    const-string v1, "createBucket"

    invoke-virtual {p0, v1}, Lorg/jets3t/service/StorageService;->assertAuthenticatedConnection(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {p0, p1, p2, p3}, Lorg/jets3t/service/StorageService;->createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/model/S3Bucket;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1546
    :catch_0
    move-exception v0

    .line 1547
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public createBucket(Lorg/jets3t/service/model/S3Bucket;)Lorg/jets3t/service/model/S3Bucket;
    .locals 4
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1898
    :try_start_0
    const-string v1, "Create Bucket"

    invoke-virtual {p0, v1}, Lorg/jets3t/service/StorageService;->assertAuthenticatedConnection(Ljava/lang/String;)V

    .line 1899
    const-string v1, "Create Bucket"

    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 1900
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jets3t/service/model/StorageBucket;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jets3t/service/model/StorageBucket;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/jets3t/service/StorageService;->createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/model/S3Bucket;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1901
    :catch_0
    move-exception v0

    .line 1902
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
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
    .line 84
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->createBucket(Ljava/lang/String;)Lorg/jets3t/service/model/S3Bucket;

    move-result-object v0

    return-object v0
.end method

.method public createSignedDeleteUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "expiryTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jets3t/service/S3Service;->createSignedDeleteUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedDeleteUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "expiryTime"    # Ljava/util/Date;
    .param p4, "isVirtualHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 526
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    .line 527
    .local v6, "secondsSinceEpoch":J
    const-string v1, "DELETE"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedDeleteUrl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p4, "expiryTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 924
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->createSignedDeleteUrl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedDeleteUrl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p4, "expiryTime"    # Ljava/util/Date;
    .param p5, "isVirtualHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 895
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    .line 896
    .local v7, "secondsSinceEpoch":J
    const-string v1, "DELETE"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, p3

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedGetUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "expiryTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jets3t/service/S3Service;->createSignedGetUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedGetUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "expiryTime"    # Ljava/util/Date;
    .param p4, "isVirtualHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 423
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    .line 424
    .local v6, "secondsSinceEpoch":J
    const-string v1, "GET"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedGetUrl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p4, "expiryTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 798
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->createSignedGetUrl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedGetUrl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p4, "expiryTime"    # Ljava/util/Date;
    .param p5, "isVirtualHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 769
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    .line 770
    .local v7, "secondsSinceEpoch":J
    const-string v1, "GET"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, p3

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedHeadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "expiryTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jets3t/service/S3Service;->createSignedHeadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedHeadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "expiryTime"    # Ljava/util/Date;
    .param p4, "isVirtualHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 573
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    .line 574
    .local v6, "secondsSinceEpoch":J
    const-string v1, "HEAD"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedHeadUrl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p4, "expiryTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 983
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->createSignedHeadUrl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedHeadUrl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p4, "expiryTime"    # Ljava/util/Date;
    .param p5, "isVirtualHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 954
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    .line 955
    .local v7, "secondsSinceEpoch":J
    const-string v1, "HEAD"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, p3

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedPutUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p4, "expiryTime"    # Ljava/util/Date;
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
            "Ljava/util/Date;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 502
    .local p3, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->createSignedPutUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedPutUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p4, "expiryTime"    # Ljava/util/Date;
    .param p5, "isVirtualHost"    # Z
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
            "Ljava/util/Date;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 475
    .local p3, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    .line 476
    .local v6, "secondsSinceEpoch":J
    const-string v1, "PUT"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedPutUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;)Ljava/lang/String;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p4, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p5, "expiryTime"    # Ljava/util/Date;
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
            "Lorg/jets3t/service/security/ProviderCredentials;",
            "Ljava/util/Date;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 865
    .local p3, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/S3Service;->createSignedPutUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedPutUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p4, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p5, "expiryTime"    # Ljava/util/Date;
    .param p6, "isVirtualHost"    # Z
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
            "Lorg/jets3t/service/security/ProviderCredentials;",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 832
    .local p3, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    .line 833
    .local v7, "secondsSinceEpoch":J
    const-string v1, "PUT"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Ljava/lang/String;
    .locals 9
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "specialParamName"    # Ljava/lang/String;
    .param p6, "secondsSinceEpoch"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 398
    .local p5, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v8}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZ)Ljava/lang/String;
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "specialParamName"    # Ljava/lang/String;
    .param p6, "secondsSinceEpoch"    # J
    .param p8, "isVirtualHost"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 360
    .local p5, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->isHttpsOnly()Z

    move-result v9

    .line 361
    .local v9, "isHttps":Z
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->getDisableDnsBuckets()Z

    move-result v10

    .local v10, "disableDnsBuckets":Z
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 363
    invoke-virtual/range {v0 .. v10}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZZZ)Ljava/lang/String;
    .locals 26
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "specialParamName"    # Ljava/lang/String;
    .param p6, "secondsSinceEpoch"    # J
    .param p8, "isVirtualHost"    # Z
    .param p9, "isHttps"    # Z
    .param p10, "isDnsBucketNamingDisabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JZZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 228
    .local p5, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/StorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v18

    .line 229
    .local v18, "s3Endpoint":Ljava/lang/String;
    const-string v24, ""

    .line 231
    .local v24, "uriPath":Ljava/lang/String;
    if-eqz p8, :cond_4

    move-object/from16 v14, p2

    .line 236
    .local v14, "hostname":Ljava/lang/String;
    :goto_0
    if-nez p5, :cond_0

    .line 237
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .end local p5    # "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 p5, v13

    .line 241
    .end local v13    # "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p5    # "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v25, ""

    .line 242
    .local v25, "virtualBucketPath":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    .line 244
    .local v23, "subdomainOffset":I
    if-lez v23, :cond_5

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 251
    :goto_1
    if-eqz p3, :cond_6

    const-string v3, "/"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 256
    .end local v23    # "subdomainOffset":I
    :goto_2
    if-eqz p4, :cond_9

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 263
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    instance-of v3, v3, Lorg/jets3t/service/security/AWSDevPayCredentials;

    if-eqz v3, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    check-cast v10, Lorg/jets3t/service/security/AWSDevPayCredentials;

    .line 265
    .local v10, "devPayCredentials":Lorg/jets3t/service/security/AWSDevPayCredentials;
    invoke-virtual {v10}, Lorg/jets3t/service/security/AWSDevPayCredentials;->getProductToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lorg/jets3t/service/security/AWSDevPayCredentials;->getUserToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lorg/jets3t/service/security/AWSDevPayCredentials;->getProductToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 268
    .local v20, "securityToken":Ljava/lang/String;
    const-string v3, "x-amz-security-token"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .end local v20    # "securityToken":Ljava/lang/String;
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x-amz-security-token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, "x-amz-security-token"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 277
    .end local v10    # "devPayCredentials":Lorg/jets3t/service/security/AWSDevPayCredentials;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AWSAccessKeyId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    invoke-virtual {v4}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&Expires="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 281
    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x-amz-request-payer=requester"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 284
    const-string v3, "x-amz-request-payer=requester"

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 285
    .local v17, "requesterPaysHeaderAndValue":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v17, v3

    const/4 v4, 0x1

    aget-object v4, v17, v4

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .end local v17    # "requesterPaysHeaderAndValue":[Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/StorageService;->getVirtualPath()Ljava/lang/String;

    move-result-object v21

    .line 290
    .local v21, "serviceEndpointVirtualPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/jets3t/service/StorageService;->renameMetadataKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/StorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/StorageService;->getResourceParameterNames()Ljava/util/List;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lorg/jets3t/service/utils/RestUtils;->makeServiceCanonicalString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, "canonicalString":Ljava/lang/String;
    sget-object v3, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    sget-object v3, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signing canonical string:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 298
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    invoke-virtual {v3}, Lorg/jets3t/service/security/ProviderCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lorg/jets3t/service/utils/ServiceUtils;->signWithHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 300
    .local v22, "signedCanonical":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 301
    .local v12, "encodedCanonical":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&Signature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 303
    if-eqz p9, :cond_c

    .line 304
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/StorageService;->getHttpsPort()I

    move-result v16

    .line 305
    .local v16, "httpsPort":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x1bb

    move/from16 v0, v16

    if-eq v0, v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .end local v16    # "httpsPort":I
    :goto_6
    return-object v3

    .line 231
    .end local v9    # "canonicalString":Ljava/lang/String;
    .end local v12    # "encodedCanonical":Ljava/lang/String;
    .end local v14    # "hostname":Ljava/lang/String;
    .end local v21    # "serviceEndpointVirtualPath":Ljava/lang/String;
    .end local v22    # "signedCanonical":Ljava/lang/String;
    .end local v25    # "virtualBucketPath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p2

    move/from16 v1, p10

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/jets3t/service/utils/ServiceUtils;->generateS3HostnameForBucket(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 249
    .restart local v14    # "hostname":Ljava/lang/String;
    .restart local v23    # "subdomainOffset":I
    .restart local v25    # "virtualBucketPath":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    .line 251
    :cond_6
    const-string v24, ""

    goto/16 :goto_2

    .line 253
    .end local v23    # "subdomainOffset":I
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_2

    :cond_8
    const-string v3, ""

    goto :goto_7

    .line 259
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_3

    .line 270
    .restart local v10    # "devPayCredentials":Lorg/jets3t/service/security/AWSDevPayCredentials;
    :cond_a
    const-string v3, "x-amz-security-token"

    invoke-virtual {v10}, Lorg/jets3t/service/security/AWSDevPayCredentials;->getUserToken()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    .line 316
    .end local v10    # "devPayCredentials":Lorg/jets3t/service/security/AWSDevPayCredentials;
    .end local v14    # "hostname":Ljava/lang/String;
    .end local v18    # "s3Endpoint":Ljava/lang/String;
    .end local v24    # "uriPath":Ljava/lang/String;
    .end local v25    # "virtualBucketPath":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 317
    .local v19, "se":Lorg/jets3t/service/ServiceException;
    new-instance v3, Lorg/jets3t/service/S3ServiceException;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v3

    .line 305
    .end local v19    # "se":Lorg/jets3t/service/ServiceException;
    .restart local v9    # "canonicalString":Ljava/lang/String;
    .restart local v12    # "encodedCanonical":Ljava/lang/String;
    .restart local v14    # "hostname":Ljava/lang/String;
    .restart local v16    # "httpsPort":I
    .restart local v18    # "s3Endpoint":Ljava/lang/String;
    .restart local v21    # "serviceEndpointVirtualPath":Ljava/lang/String;
    .restart local v22    # "signedCanonical":Ljava/lang/String;
    .restart local v24    # "uriPath":Ljava/lang/String;
    .restart local v25    # "virtualBucketPath":Ljava/lang/String;
    :cond_b
    :try_start_1
    const-string v3, ""

    goto/16 :goto_5

    .line 310
    .end local v16    # "httpsPort":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/StorageService;->getHttpPort()I

    move-result v15

    .line 311
    .local v15, "httpPort":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x50

    if-eq v15, v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :cond_d
    const-string v3, ""
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 318
    .end local v9    # "canonicalString":Ljava/lang/String;
    .end local v12    # "encodedCanonical":Ljava/lang/String;
    .end local v14    # "hostname":Ljava/lang/String;
    .end local v15    # "httpPort":I
    .end local v18    # "s3Endpoint":Ljava/lang/String;
    .end local v21    # "serviceEndpointVirtualPath":Ljava/lang/String;
    .end local v22    # "signedCanonical":Ljava/lang/String;
    .end local v24    # "uriPath":Ljava/lang/String;
    .end local v25    # "virtualBucketPath":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 319
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v3, v11}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;J)Ljava/lang/String;
    .locals 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "specialParamName"    # Ljava/lang/String;
    .param p6, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p7, "secondsSinceEpoch"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jets3t/service/security/ProviderCredentials;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 738
    .local p5, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;JZ)Ljava/lang/String;
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "specialParamName"    # Ljava/lang/String;
    .param p6, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p7, "secondsSinceEpoch"    # J
    .param p9, "isVirtualHost"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jets3t/service/security/ProviderCredentials;",
            "JZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 694
    .local p5, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->getHttpsOnly()Z

    move-result v9

    .line 695
    .local v9, "isHttps":Z
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->getDisableDnsBuckets()Z

    move-result v10

    .local v10, "disableDnsBuckets":Z
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    move/from16 v8, p9

    .line 697
    invoke-static/range {v0 .. v10}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/security/ProviderCredentials;JZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createTorrentUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;

    .prologue
    .line 999
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v4

    .line 1000
    .local v4, "s3Endpoint":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->getVirtualPath()Ljava/lang/String;

    move-result-object v5

    .line 1001
    .local v5, "serviceEndpointVirtualPath":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->getHttpPort()I

    move-result v3

    .line 1002
    .local v3, "httpPort":I
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->getDisableDnsBuckets()Z

    move-result v1

    .line 1005
    .local v1, "disableDnsBuckets":Z
    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/jets3t/service/utils/ServiceUtils;->isBucketNameValidDNSName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, ""

    .line 1009
    .local v0, "bucketNameInPath":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-static {v5, v8}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-static {p2, v8}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1013
    .local v6, "urlPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1, v1, v4}, Lorg/jets3t/service/utils/ServiceUtils;->generateS3HostnameForBucket(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v7, 0x50

    if-eq v3, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?torrent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1005
    .end local v0    # "bucketNameInPath":Ljava/lang/String;
    .end local v6    # "urlPath":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1013
    .restart local v0    # "bucketNameInPath":Ljava/lang/String;
    .restart local v6    # "urlPath":Ljava/lang/String;
    :cond_1
    const-string v7, ""
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1018
    .end local v0    # "bucketNameInPath":Ljava/lang/String;
    .end local v6    # "urlPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1019
    .local v2, "e":Lorg/jets3t/service/ServiceException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public createUnsignedObjectUrl(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 12
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "isVirtualHost"    # Z
    .param p4, "isHttps"    # Z
    .param p5, "isDnsBucketNamingDisabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 180
    const-string v1, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lorg/jets3t/service/S3Service;->createSignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JZZZ)Ljava/lang/String;

    move-result-object v11

    .line 182
    .local v11, "signedGETUrl":Ljava/lang/String;
    const-string v0, "\\?"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public deleteBucket(Lorg/jets3t/service/model/S3Bucket;)V
    .locals 2
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1970
    :try_start_0
    const-string v1, "Delete bucket"

    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 1971
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->deleteBucketImpl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1975
    return-void

    .line 1972
    :catch_0
    move-exception v0

    .line 1973
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public deleteBucketPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3156
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->deleteBucketPolicyImpl(Ljava/lang/String;)V

    .line 3157
    return-void
.end method

.method protected abstract deleteBucketPolicyImpl(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public deleteMultipleObjects(Ljava/lang/String;[Ljava/lang/String;)Lorg/jets3t/service/model/MultipleDeleteResult;
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2369
    array-length v7, p2

    new-array v6, v7, [Lorg/jets3t/service/model/container/ObjectKeyAndVersion;

    .line 2370
    .local v6, "objectKeyAndVersion":[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
    const/4 v1, 0x0

    .line 2371
    .local v1, "i":I
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v0, v3

    .line 2372
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v7, Lorg/jets3t/service/model/container/ObjectKeyAndVersion;

    invoke-direct {v7, v4}, Lorg/jets3t/service/model/container/ObjectKeyAndVersion;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v2

    .line 2371
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 2374
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lorg/jets3t/service/S3Service;->deleteMultipleObjects(Ljava/lang/String;[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;Z)Lorg/jets3t/service/model/MultipleDeleteResult;

    move-result-object v7

    return-object v7
.end method

.method public deleteMultipleObjects(Ljava/lang/String;[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;)Lorg/jets3t/service/model/MultipleDeleteResult;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectNameAndVersions"    # [Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2394
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jets3t/service/S3Service;->deleteMultipleObjects(Ljava/lang/String;[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;Z)Lorg/jets3t/service/model/MultipleDeleteResult;

    move-result-object v0

    return-object v0
.end method

.method public deleteMultipleObjects(Ljava/lang/String;[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;Z)Lorg/jets3t/service/model/MultipleDeleteResult;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectNameAndVersions"    # [Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
    .param p3, "isQuiet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2416
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->deleteMultipleObjectsWithMFA(Ljava/lang/String;[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jets3t/service/model/MultipleDeleteResult;

    move-result-object v0

    return-object v0
.end method

.method public deleteMultipleObjectsWithMFA(Ljava/lang/String;[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jets3t/service/model/MultipleDeleteResult;
    .locals 1
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
    .line 2444
    invoke-virtual/range {p0 .. p5}, Lorg/jets3t/service/S3Service;->deleteMultipleObjectsWithMFAImpl(Ljava/lang/String;[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jets3t/service/model/MultipleDeleteResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract deleteMultipleObjectsWithMFAImpl(Ljava/lang/String;[Lorg/jets3t/service/model/container/ObjectKeyAndVersion;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jets3t/service/model/MultipleDeleteResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public deleteObject(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;)V
    .locals 2
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2285
    :try_start_0
    const-string v1, "deleteObject"

    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 2286
    const-string v1, "deleteObject"

    invoke-virtual {p0, p2, v1}, Lorg/jets3t/service/StorageService;->assertValidObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/jets3t/service/StorageService;->deleteObject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2291
    return-void

    .line 2288
    :catch_0
    move-exception v0

    .line 2289
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public deleteVersionedObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2345
    :try_start_0
    const-string v0, "deleteVersionedObject"

    invoke-virtual {p0, p3, v0}, Lorg/jets3t/service/StorageService;->assertValidObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectDeleteEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->deleteObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2351
    return-void

    .line 2348
    :catch_0
    move-exception v6

    .line 2349
    .local v6, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v6}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public deleteVersionedObjectWithMFA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "multiFactorSerialNumber"    # Ljava/lang/String;
    .param p3, "multiFactorAuthCode"    # Ljava/lang/String;
    .param p4, "bucketName"    # Ljava/lang/String;
    .param p5, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2317
    :try_start_0
    const-string v0, "deleteVersionedObjectWithMFA"

    invoke-virtual {p0, p5, v0}, Lorg/jets3t/service/StorageService;->assertValidObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectDeleteEvent(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2319
    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->deleteObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2324
    return-void

    .line 2321
    :catch_0
    move-exception v6

    .line 2322
    .local v6, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v6}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public deleteWebsiteConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3743
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->deleteWebsiteConfigImpl(Ljava/lang/String;)V

    .line 3744
    return-void
.end method

.method protected abstract deleteWebsiteConfigImpl(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public disableMFAForVersionedBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "multiFactorSerialNumber"    # Ljava/lang/String;
    .param p3, "multiFactorAuthCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2042
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->updateBucketVersioningStatusImpl(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 2044
    return-void
.end method

.method public enableBucketVersioning(Ljava/lang/String;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1987
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->updateBucketVersioningStatusImpl(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 1988
    return-void
.end method

.method public enableBucketVersioningAndMFA(Ljava/lang/String;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2002
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->updateBucketVersioningStatusImpl(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 2003
    return-void
.end method

.method public enableBucketVersioningWithMFA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "multiFactorSerialNumber"    # Ljava/lang/String;
    .param p3, "multiFactorAuthCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2021
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->updateBucketVersioningStatusImpl(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 2023
    return-void
.end method

.method public getAWSCredentials()Lorg/jets3t/service/security/ProviderCredentials;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    return-object v0
.end method

.method public getBucket(Ljava/lang/String;)Lorg/jets3t/service/model/S3Bucket;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1909
    :try_start_0
    invoke-super {p0, p1}, Lorg/jets3t/service/StorageService;->getBucket(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/model/S3Bucket;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1910
    :catch_0
    move-exception v0

    .line 1911
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public bridge synthetic getBucket(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->getBucket(Ljava/lang/String;)Lorg/jets3t/service/model/S3Bucket;

    move-result-object v0

    return-object v0
.end method

.method public getBucketAcl(Lorg/jets3t/service/model/S3Bucket;)Lorg/jets3t/service/acl/AccessControlList;
    .locals 2
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2988
    :try_start_0
    const-string v1, "Get Bucket Access Control List"

    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 2989
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getBucketAclImpl(Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2990
    :catch_0
    move-exception v0

    .line 2991
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public getBucketLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3007
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getBucketLocationImpl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3008
    :catch_0
    move-exception v0

    .line 3009
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public getBucketLoggingStatus(Ljava/lang/String;)Lorg/jets3t/service/model/S3BucketLoggingStatus;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3025
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getBucketLoggingStatusImpl(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/model/S3BucketLoggingStatus;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3026
    :catch_0
    move-exception v0

    .line 3027
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public getBucketPolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3137
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->getBucketPolicyImpl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/jets3t/service/S3ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3140
    :goto_0
    return-object v1

    .line 3138
    :catch_0
    move-exception v0

    .line 3139
    .local v0, "e":Lorg/jets3t/service/S3ServiceException;
    invoke-virtual {v0}, Lorg/jets3t/service/ServiceException;->getResponseCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 3140
    const/4 v1, 0x0

    goto :goto_0

    .line 3142
    :cond_0
    throw v0
.end method

.method protected abstract getBucketPolicyImpl(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public getBucketVersioningStatus(Ljava/lang/String;)Lorg/jets3t/service/model/S3BucketVersioningStatus;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2095
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->getBucketVersioningStatusImpl(Ljava/lang/String;)Lorg/jets3t/service/model/S3BucketVersioningStatus;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getBucketVersioningStatusImpl(Ljava/lang/String;)Lorg/jets3t/service/model/S3BucketVersioningStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public getNotificationConfig(Ljava/lang/String;)Lorg/jets3t/service/model/NotificationConfig;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3769
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->getNotificationConfigImpl(Ljava/lang/String;)Lorg/jets3t/service/model/NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getNotificationConfigImpl(Ljava/lang/String;)Lorg/jets3t/service/model/NotificationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1377
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/jets3t/service/StorageService;->getObject(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/S3Object;
    .locals 2
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
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2583
    :try_start_0
    invoke-super/range {p0 .. p8}, Lorg/jets3t/service/StorageService;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2586
    :catch_0
    move-exception v0

    .line 2587
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public getObject(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .locals 10
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1616
    :try_start_0
    const-string v0, "getObject"

    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 1617
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lorg/jets3t/service/S3Service;->getObject(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1618
    :catch_0
    move-exception v9

    .line 1619
    .local v9, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v9}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public getObject(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/S3Object;
    .locals 11
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p4, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifMatchTags"    # [Ljava/lang/String;
    .param p6, "ifNoneMatchTags"    # [Ljava/lang/String;
    .param p7, "byteRangeStart"    # Ljava/lang/Long;
    .param p8, "byteRangeEnd"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2635
    :try_start_0
    const-string v0, "Get Object"

    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 2636
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectGetEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2639
    :catch_0
    move-exception v10

    .line 2640
    .local v10, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v10}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
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
    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/S3Service;->getObject(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

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
    .line 84
    invoke-virtual/range {p0 .. p8}, Lorg/jets3t/service/S3Service;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectAcl(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .locals 3
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2900
    :try_start_0
    const-string v1, "Get Object Access Control List"

    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 2901
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectAclImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2902
    :catch_0
    move-exception v0

    .line 2903
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public getObjectDetails(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .locals 8
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1681
    :try_start_0
    const-string v0, "getObjectDetails"

    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 1682
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/S3Service;->getObjectDetails(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1683
    :catch_0
    move-exception v7

    .line 1684
    .local v7, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v7}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public getObjectDetails(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .locals 9
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p4, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifMatchTags"    # [Ljava/lang/String;
    .param p6, "ifNoneMatchTags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2481
    :try_start_0
    const-string v0, "Get Object Details"

    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 2482
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectHeadEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectDetailsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2485
    :catch_0
    move-exception v8

    .line 2486
    .local v8, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v8}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public getObjectVersions(Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    .locals 13
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 1818
    const-wide/16 v6, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v7}, Lorg/jets3t/service/S3Service;->listVersionedObjectsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    move-result-object v11

    .line 1821
    .local v11, "matchesForNamePrefix":[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    const/4 v8, 0x0

    .line 1822
    .local v8, "exactMatchCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_1

    if-gt v10, v8, :cond_1

    .line 1823
    aget-object v0, v11, v10

    invoke-virtual {v0}, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    add-int/lit8 v8, v8, 0x1

    .line 1822
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1827
    :cond_1
    new-array v9, v8, [Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    .line 1828
    .local v9, "exactMatches":[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    invoke-static {v11, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1829
    return-object v9
.end method

.method public getOrCreateBucket(Ljava/lang/String;)Lorg/jets3t/service/model/S3Bucket;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1502
    :try_start_0
    iget-object v1, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v2, "s3service.default-bucket-location"

    const-string v3, "US"

    invoke-virtual {v1, v2, v3}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/S3Service;->getOrCreateBucket(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Bucket;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public getOrCreateBucket(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Bucket;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1941
    :try_start_0
    const-string v2, "Get or Create Bucket with location"

    invoke-virtual {p0, v2}, Lorg/jets3t/service/StorageService;->assertAuthenticatedConnection(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1946
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->getBucket(Ljava/lang/String;)Lorg/jets3t/service/model/S3Bucket;

    move-result-object v0

    .line 1947
    .local v0, "bucket":Lorg/jets3t/service/model/S3Bucket;
    if-nez v0, :cond_0

    .line 1949
    new-instance v2, Lorg/jets3t/service/model/S3Bucket;

    invoke-direct {v2, p1, p2}, Lorg/jets3t/service/model/S3Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/jets3t/service/S3Service;->createBucket(Lorg/jets3t/service/model/S3Bucket;)Lorg/jets3t/service/model/S3Bucket;

    move-result-object v0

    .line 1951
    :cond_0
    return-object v0

    .line 1942
    .end local v0    # "bucket":Lorg/jets3t/service/model/S3Bucket;
    :catch_0
    move-exception v1

    .line 1943
    .local v1, "se":Lorg/jets3t/service/ServiceException;
    new-instance v2, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v2, v1}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v2
.end method

.method public bridge synthetic getOrCreateBucket(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->getOrCreateBucket(Ljava/lang/String;)Lorg/jets3t/service/model/S3Bucket;

    move-result-object v0

    return-object v0
.end method

.method public getVersionedObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .locals 11
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1650
    :try_start_0
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectGetEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1653
    :catch_0
    move-exception v10

    .line 1654
    .local v10, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v10}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public getVersionedObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/S3Object;
    .locals 11
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p6, "ifMatchTags"    # [Ljava/lang/String;
    .param p7, "ifNoneMatchTags"    # [Ljava/lang/String;
    .param p8, "byteRangeStart"    # Ljava/lang/Long;
    .param p9, "byteRangeEnd"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2748
    :try_start_0
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectGetEvent(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object v9, p1

    .line 2749
    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2751
    :catch_0
    move-exception v10

    .line 2752
    .local v10, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v10}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public getVersionedObject(Ljava/lang/String;Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/S3Object;
    .locals 11
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p6, "ifMatchTags"    # [Ljava/lang/String;
    .param p7, "ifNoneMatchTags"    # [Ljava/lang/String;
    .param p8, "byteRangeStart"    # Ljava/lang/Long;
    .param p9, "byteRangeEnd"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2692
    :try_start_0
    const-string v0, "Get Versioned Object"

    invoke-virtual {p0, p2, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 2693
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectGetEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    invoke-virtual {p2}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2696
    :catch_0
    move-exception v10

    .line 2697
    .local v10, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v10}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public getVersionedObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .locals 2
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2963
    :try_start_0
    invoke-virtual {p0, p2, p3, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectAclImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2964
    :catch_0
    move-exception v0

    .line 2965
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public getVersionedObjectAcl(Ljava/lang/String;Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .locals 2
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p3, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2932
    :try_start_0
    const-string v1, "Get versioned Object Access Control List"

    invoke-virtual {p0, p2, v1}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 2933
    invoke-virtual {p2}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectAclImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2934
    :catch_0
    move-exception v0

    .line 2935
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public getVersionedObjectDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .locals 9
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1711
    :try_start_0
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectHeadEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectDetailsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1714
    :catch_0
    move-exception v8

    .line 1715
    .local v8, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v8}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public getVersionedObjectDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .locals 9
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p6, "ifMatchTags"    # [Ljava/lang/String;
    .param p7, "ifNoneMatchTags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2568
    :try_start_0
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectHeadEvent(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object v7, p1

    .line 2569
    invoke-virtual/range {v0 .. v7}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectDetailsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2571
    :catch_0
    move-exception v8

    .line 2572
    .local v8, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v8}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public getVersionedObjectDetails(Ljava/lang/String;Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .locals 9
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p6, "ifMatchTags"    # [Ljava/lang/String;
    .param p7, "ifNoneMatchTags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2525
    :try_start_0
    const-string v0, "Get Versioned Object Details"

    invoke-virtual {p0, p2, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 2526
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectHeadEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    invoke-virtual {p2}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectDetailsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2529
    :catch_0
    move-exception v8

    .line 2530
    .local v8, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v8}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public getWebsiteConfig(Ljava/lang/String;)Lorg/jets3t/service/model/WebsiteConfig;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3731
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->getWebsiteConfigImpl(Ljava/lang/String;)Lorg/jets3t/service/model/WebsiteConfig;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getWebsiteConfigImpl(Ljava/lang/String;)Lorg/jets3t/service/model/WebsiteConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public isRequesterPaysBucket(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3177
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->isRequesterPaysBucketImpl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract isRequesterPaysBucketImpl(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public listAllBuckets()[Lorg/jets3t/service/model/S3Bucket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1367
    :try_start_0
    invoke-super {p0}, Lorg/jets3t/service/StorageService;->listAllBuckets()[Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    .line 1368
    .local v0, "buckets":[Lorg/jets3t/service/model/StorageBucket;
    invoke-static {v0}, Lorg/jets3t/service/model/S3Bucket;->cast([Lorg/jets3t/service/model/StorageBucket;)[Lorg/jets3t/service/model/S3Bucket;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1369
    .end local v0    # "buckets":[Lorg/jets3t/service/model/StorageBucket;
    :catch_0
    move-exception v1

    .line 1370
    .local v1, "se":Lorg/jets3t/service/ServiceException;
    new-instance v2, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v2, v1}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v2
.end method

.method public bridge synthetic listAllBuckets()[Lorg/jets3t/service/model/StorageBucket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/jets3t/service/S3Service;->listAllBuckets()[Lorg/jets3t/service/model/S3Bucket;

    move-result-object v0

    return-object v0
.end method

.method public listObjects(Ljava/lang/String;)[Lorg/jets3t/service/model/S3Object;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1417
    :try_start_0
    invoke-super {p0, p1}, Lorg/jets3t/service/StorageService;->listObjects(Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/model/S3Object;->cast([Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/S3Object;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1482
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/jets3t/service/StorageService;->listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/model/S3Object;->cast([Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1483
    :catch_0
    move-exception v0

    .line 1484
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/S3Object;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1428
    :try_start_0
    invoke-super/range {p0 .. p5}, Lorg/jets3t/service/StorageService;->listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/model/S3Object;->cast([Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public listObjects(Lorg/jets3t/service/model/S3Bucket;)[Lorg/jets3t/service/model/S3Object;
    .locals 7
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1407
    :try_start_0
    const-string v0, "listObjects"

    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 1408
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->listObjects(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1409
    :catch_0
    move-exception v6

    .line 1410
    .local v6, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v6}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public listObjects(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/S3Object;
    .locals 7
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1470
    :try_start_0
    const-string v0, "listObjects"

    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 1471
    const-wide/16 v4, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->listObjects(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1472
    :catch_0
    move-exception v6

    .line 1473
    .local v6, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v6}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
.end method

.method public listObjects(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/S3Object;
    .locals 7
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1762
    :try_start_0
    const-string v0, "List objects in bucket"

    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 1763
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1764
    :catch_0
    move-exception v6

    .line 1765
    .local v6, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v6}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v0
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
    .line 84
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->listObjects(Ljava/lang/String;)[Lorg/jets3t/service/model/S3Object;

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
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lorg/jets3t/service/S3Service;->listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/StorageObject;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p5}, Lorg/jets3t/service/S3Service;->listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method public listVersionedObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1791
    const-wide/16 v6, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v7}, Lorg/jets3t/service/S3Service;->listVersionedObjectsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    move-result-object v0

    return-object v0
.end method

.method public listVersionedObjectsChunked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)Lorg/jets3t/service/VersionOrDeleteMarkersChunk;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J
    .param p6, "priorLastKey"    # Ljava/lang/String;
    .param p7, "priorLastVersionId"    # Ljava/lang/String;
    .param p8, "completeListing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1874
    invoke-virtual/range {p0 .. p8}, Lorg/jets3t/service/S3Service;->listVersionedObjectsChunkedImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)Lorg/jets3t/service/VersionOrDeleteMarkersChunk;

    move-result-object v0

    return-object v0
.end method

.method protected abstract listVersionedObjectsChunkedImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)Lorg/jets3t/service/VersionOrDeleteMarkersChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method protected abstract listVersionedObjectsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public multipartAbortUpload(Lorg/jets3t/service/model/MultipartUpload;)V
    .locals 3
    .param p1, "upload"    # Lorg/jets3t/service/model/MultipartUpload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3401
    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/jets3t/service/S3Service;->multipartAbortUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    return-void
.end method

.method protected abstract multipartAbortUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public multipartCompleteUpload(Lorg/jets3t/service/model/MultipartUpload;)Lorg/jets3t/service/model/MultipartCompleted;
    .locals 4
    .param p1, "upload"    # Lorg/jets3t/service/model/MultipartUpload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3557
    invoke-virtual {p0, p1}, Lorg/jets3t/service/S3Service;->multipartListParts(Lorg/jets3t/service/model/MultipartUpload;)Ljava/util/List;

    move-result-object v0

    .line 3558
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartPart;>;"
    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/jets3t/service/S3Service;->multipartCompleteUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/jets3t/service/model/MultipartCompleted;

    move-result-object v1

    return-object v1
.end method

.method public multipartCompleteUpload(Lorg/jets3t/service/model/MultipartUpload;Ljava/util/List;)Lorg/jets3t/service/model/MultipartCompleted;
    .locals 3
    .param p1, "upload"    # Lorg/jets3t/service/model/MultipartUpload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jets3t/service/model/MultipartUpload;",
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
    .line 3538
    .local p2, "parts":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartPart;>;"
    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lorg/jets3t/service/S3Service;->multipartCompleteUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/jets3t/service/model/MultipartCompleted;

    move-result-object v0

    return-object v0
.end method

.method protected abstract multipartCompleteUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/jets3t/service/model/MultipartCompleted;
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
.end method

.method public multipartListParts(Lorg/jets3t/service/model/MultipartUpload;)Ljava/util/List;
    .locals 3
    .param p1, "upload"    # Lorg/jets3t/service/model/MultipartUpload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jets3t/service/model/MultipartUpload;",
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
    .line 3519
    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/jets3t/service/S3Service;->multipartListPartsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract multipartListPartsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public multipartListUploads(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipartUpload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3417
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/S3Service;->multipartListUploads(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public multipartListUploads(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "nextKeyMarker"    # Ljava/lang/String;
    .param p3, "nextUploadIdMarker"    # Ljava/lang/String;
    .param p4, "maxUploads"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipartUpload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3424
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/S3Service;->multipartListUploads(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public multipartListUploads(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "nextKeyMarker"    # Ljava/lang/String;
    .param p5, "nextUploadIdMarker"    # Ljava/lang/String;
    .param p6, "maxUploads"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipartUpload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3454
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/jets3t/service/S3Service;->multipartListUploadsChunkedImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)Lorg/jets3t/service/MultipartUploadChunk;

    move-result-object v8

    .line 3461
    .local v8, "result":Lorg/jets3t/service/MultipartUploadChunk;
    invoke-virtual {v8}, Lorg/jets3t/service/MultipartUploadChunk;->getUploads()[Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public multipartListUploadsChunked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)Lorg/jets3t/service/MultipartUploadChunk;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "keyMarker"    # Ljava/lang/String;
    .param p5, "uploadIdMarker"    # Ljava/lang/String;
    .param p6, "maxUploads"    # Ljava/lang/Integer;
    .param p7, "completeListing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3496
    invoke-virtual/range {p0 .. p7}, Lorg/jets3t/service/S3Service;->multipartListUploadsChunkedImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)Lorg/jets3t/service/MultipartUploadChunk;

    move-result-object v0

    return-object v0
.end method

.method protected abstract multipartListUploadsChunkedImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)Lorg/jets3t/service/MultipartUploadChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public multipartStartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/jets3t/service/model/MultipartUpload;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/jets3t/service/model/MultipartUpload;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .local p3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 3341
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->multipartStartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v0

    return-object v0
.end method

.method public multipartStartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartUpload;
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
    .line 3366
    .local p3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/S3Service;->multipartStartUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v0

    return-object v0
.end method

.method public multipartStartUpload(Ljava/lang/String;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/MultipartUpload;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3386
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadataMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v4

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getStorageClass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getServerSideEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/S3Service;->multipartStartUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v0

    return-object v0
.end method

.method protected abstract multipartStartUploadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartUpload;
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
.end method

.method public multipartUploadPart(Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Integer;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/MultipartPart;
    .locals 3
    .param p1, "upload"    # Lorg/jets3t/service/model/MultipartUpload;
    .param p2, "partNumber"    # Ljava/lang/Integer;
    .param p3, "object"    # Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3581
    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartUpload;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2, p3}, Lorg/jets3t/service/S3Service;->multipartUploadPartImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/MultipartPart;

    move-result-object v0

    .line 3583
    .local v0, "part":Lorg/jets3t/service/model/MultipartPart;
    invoke-virtual {p1, v0}, Lorg/jets3t/service/model/MultipartUpload;->addMultipartPartToUploadedList(Lorg/jets3t/service/model/MultipartPart;)V

    .line 3584
    return-object v0
.end method

.method public multipartUploadPartCopy(Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartPart;
    .locals 16
    .param p1, "upload"    # Lorg/jets3t/service/model/MultipartUpload;
    .param p2, "partNumber"    # Ljava/lang/Integer;
    .param p3, "sourceBucketName"    # Ljava/lang/String;
    .param p4, "sourceObjectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3700
    invoke-virtual/range {p1 .. p1}, Lorg/jets3t/service/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/jets3t/service/model/MultipartUpload;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/jets3t/service/model/MultipartUpload;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v14}, Lorg/jets3t/service/S3Service;->multipartUploadPartCopyImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartPart;

    move-result-object v15

    .line 3704
    .local v15, "part":Lorg/jets3t/service/model/MultipartPart;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/jets3t/service/model/MultipartUpload;->addMultipartPartToUploadedList(Lorg/jets3t/service/model/MultipartPart;)V

    .line 3705
    return-object v15
.end method

.method public multipartUploadPartCopy(Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartPart;
    .locals 16
    .param p1, "upload"    # Lorg/jets3t/service/model/MultipartUpload;
    .param p2, "partNumber"    # Ljava/lang/Integer;
    .param p3, "sourceBucketName"    # Ljava/lang/String;
    .param p4, "sourceObjectKey"    # Ljava/lang/String;
    .param p5, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3669
    invoke-virtual/range {p1 .. p1}, Lorg/jets3t/service/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/jets3t/service/model/MultipartUpload;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/jets3t/service/model/MultipartUpload;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v1 .. v14}, Lorg/jets3t/service/S3Service;->multipartUploadPartCopyImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartPart;

    move-result-object v15

    .line 3673
    .local v15, "part":Lorg/jets3t/service/model/MultipartPart;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/jets3t/service/model/MultipartUpload;->addMultipartPartToUploadedList(Lorg/jets3t/service/model/MultipartPart;)V

    .line 3674
    return-object v15
.end method

.method public multipartUploadPartCopy(Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartPart;
    .locals 16
    .param p1, "upload"    # Lorg/jets3t/service/model/MultipartUpload;
    .param p2, "partNumber"    # Ljava/lang/Integer;
    .param p3, "sourceBucketName"    # Ljava/lang/String;
    .param p4, "sourceObjectKey"    # Ljava/lang/String;
    .param p5, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p6, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p7, "ifMatchTags"    # [Ljava/lang/String;
    .param p8, "ifNoneMatchTags"    # [Ljava/lang/String;
    .param p9, "byteRangeStart"    # Ljava/lang/Long;
    .param p10, "byteRangeEnd"    # Ljava/lang/Long;
    .param p11, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3634
    invoke-virtual/range {p1 .. p1}, Lorg/jets3t/service/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/jets3t/service/model/MultipartUpload;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/jets3t/service/model/MultipartUpload;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v1 .. v14}, Lorg/jets3t/service/S3Service;->multipartUploadPartCopyImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartPart;

    move-result-object v15

    .line 3640
    .local v15, "part":Lorg/jets3t/service/model/MultipartPart;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/jets3t/service/model/MultipartUpload;->addMultipartPartToUploadedList(Lorg/jets3t/service/model/MultipartPart;)V

    .line 3641
    return-object v15
.end method

.method protected abstract multipartUploadPartCopyImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method protected abstract multipartUploadPartImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/MultipartPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public putObject(Ljava/lang/String;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/S3Object;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2121
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/jets3t/service/StorageService;->putObject(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2122
    :catch_0
    move-exception v0

    .line 2123
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public putObject(Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/S3Object;
    .locals 2
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "object"    # Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2264
    :try_start_0
    const-string v1, "Create Object in bucket"

    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/jets3t/service/S3Service;->putObject(Ljava/lang/String;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2266
    :catch_0
    move-exception v0

    .line 2267
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public putObjectAcl(Ljava/lang/String;Lorg/jets3t/service/model/S3Object;)V
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2802
    :try_start_0
    const-string v1, "Put Object Access Control List"

    invoke-virtual {p0, p2, v1}, Lorg/jets3t/service/StorageService;->assertValidObject(Lorg/jets3t/service/model/StorageObject;Ljava/lang/String;)V

    .line 2803
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jets3t/service/StorageService;->putObjectAcl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2807
    return-void

    .line 2804
    :catch_0
    move-exception v0

    .line 2805
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public putObjectAcl(Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;)V
    .locals 4
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "object"    # Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2775
    :try_start_0
    const-string v1, "Put Object Access Control List"

    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 2776
    const-string v1, "Put Object Access Control List"

    invoke-virtual {p0, p2, v1}, Lorg/jets3t/service/StorageService;->assertValidObject(Lorg/jets3t/service/model/StorageObject;Ljava/lang/String;)V

    .line 2777
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/jets3t/service/StorageService;->putObjectAcl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2781
    return-void

    .line 2778
    :catch_0
    move-exception v0

    .line 2779
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public putObjectMaybeAsMultipart(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;J)V
    .locals 23
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/StorageObject;
    .param p3, "maxPartSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 3243
    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getDataInputFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3244
    new-instance v3, Lorg/jets3t/service/ServiceException;

    const-string v4, "multipartUpload method only supports file-based objects"

    invoke-direct {v3, v4}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3248
    :cond_0
    new-instance v15, Lorg/jets3t/service/utils/MultipartUtils;

    move-wide/from16 v0, p3

    invoke-direct {v15, v0, v1}, Lorg/jets3t/service/utils/MultipartUtils;-><init>(J)V

    .line 3251
    .local v15, "multipartUtils":Lorg/jets3t/service/utils/MultipartUtils;
    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getDataInputFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/jets3t/service/utils/MultipartUtils;->isFileLargerThanMaxPartSize(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3252
    sget-object v3, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Performing normal PUT upload for object with data <= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 3253
    invoke-virtual/range {p0 .. p2}, Lorg/jets3t/service/StorageService;->putObject(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)Lorg/jets3t/service/model/StorageObject;

    .line 3322
    :goto_0
    return-void

    .line 3255
    :cond_1
    sget-object v3, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Performing multipart upload for object with data > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 3258
    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadataMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getStorageClass()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/jets3t/service/S3Service;->multipartStartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v22

    .line 3262
    .local v22, "upload":Lorg/jets3t/service/model/MultipartUpload;
    const/4 v11, 0x0

    .line 3263
    .local v11, "foundUpload":Z
    const/4 v14, 0x5

    .line 3264
    .local v14, "maxTries":I
    const/16 v21, 0x0

    .line 3267
    .local v21, "tries":I
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jets3t/service/S3Service;->multipartListParts(Lorg/jets3t/service/model/MultipartUpload;)Ljava/util/List;
    :try_end_0
    .catch Lorg/jets3t/service/S3ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3268
    const/4 v11, 0x1

    .line 3282
    :goto_1
    if-nez v11, :cond_3

    move/from16 v0, v21

    if-lt v0, v14, :cond_2

    .line 3284
    :cond_3
    if-nez v11, :cond_5

    .line 3285
    new-instance v3, Lorg/jets3t/service/ServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multipart upload was started but unavailable for use after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attempts, giving up"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3269
    :catch_0
    move-exception v9

    .line 3270
    .local v9, "e":Lorg/jets3t/service/S3ServiceException;
    const-string v3, "NoSuchUpload"

    invoke-virtual {v9}, Lorg/jets3t/service/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3271
    add-int/lit8 v21, v21, 0x1

    .line 3273
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3274
    :catch_1
    move-exception v13

    .line 3275
    .local v13, "ie":Ljava/lang/InterruptedException;
    move/from16 v21, v14

    .line 3276
    goto :goto_1

    .line 3279
    .end local v13    # "ie":Ljava/lang/InterruptedException;
    :cond_4
    throw v9

    .line 3292
    .end local v9    # "e":Lorg/jets3t/service/S3ServiceException;
    :cond_5
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getDataInputFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lorg/jets3t/service/utils/MultipartUtils;->splitFileIntoObjectsByMaxPartSize(Ljava/lang/String;Ljava/io/File;)Ljava/util/List;

    move-result-object v19

    .line 3295
    .local v19, "partObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/S3Object;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 3296
    .local v20, "parts":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartPart;>;"
    const/16 v17, 0x1

    .line 3297
    .local v17, "partNumber":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/jets3t/service/model/S3Object;

    .line 3298
    .local v18, "partObject":Lorg/jets3t/service/model/S3Object;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v3, v2}, Lorg/jets3t/service/S3Service;->multipartUploadPart(Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Integer;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/MultipartPart;

    move-result-object v16

    .line 3299
    .local v16, "part":Lorg/jets3t/service/model/MultipartPart;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3300
    add-int/lit8 v17, v17, 0x1

    .line 3301
    goto :goto_2

    .line 3303
    .end local v16    # "part":Lorg/jets3t/service/model/MultipartPart;
    .end local v18    # "partObject":Lorg/jets3t/service/model/S3Object;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/S3Service;->multipartCompleteUpload(Lorg/jets3t/service/model/MultipartUpload;Ljava/util/List;)Lorg/jets3t/service/model/MultipartCompleted;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 3304
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "partNumber":I
    .end local v19    # "partObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/S3Object;>;"
    .end local v20    # "parts":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartPart;>;"
    :catch_2
    move-exception v9

    .line 3305
    .local v9, "e":Ljava/lang/RuntimeException;
    throw v9

    .line 3306
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v9

    .line 3308
    .local v9, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Multipart upload failed, attempting clean-up by aborting upload"

    invoke-interface {v3, v4, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3310
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jets3t/service/S3Service;->multipartAbortUpload(Lorg/jets3t/service/model/MultipartUpload;)V
    :try_end_3
    .catch Lorg/jets3t/service/S3ServiceException; {:try_start_3 .. :try_end_3} :catch_4

    .line 3315
    :goto_3
    instance-of v3, v9, Lorg/jets3t/service/ServiceException;

    if-eqz v3, :cond_7

    .line 3316
    check-cast v9, Lorg/jets3t/service/ServiceException;

    .end local v9    # "e":Ljava/lang/Exception;
    throw v9

    .line 3311
    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    .line 3312
    .local v10, "e2":Lorg/jets3t/service/S3ServiceException;
    sget-object v3, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Multipart upload failed and could not clean-up by aborting upload"

    invoke-interface {v3, v4, v10}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3318
    .end local v10    # "e2":Lorg/jets3t/service/S3ServiceException;
    :cond_7
    new-instance v3, Lorg/jets3t/service/ServiceException;

    const-string v4, "Multipart upload failed"

    invoke-direct {v3, v4, v9}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public putVersionedObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V
    .locals 2
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2833
    :try_start_0
    invoke-virtual {p0, p2, p3, p4, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->putObjectAclImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2837
    return-void

    .line 2834
    :catch_0
    move-exception v0

    .line 2835
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method

.method public putVersionedObjectAcl(Ljava/lang/String;Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;)V
    .locals 6
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p3, "object"    # Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 2863
    :try_start_0
    const-string v3, "Put Versioned Object Access Control List"

    invoke-virtual {p0, p2, v3}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 2864
    const-string v3, "Put Versioned Object Access Control List"

    invoke-virtual {p0, p3, v3}, Lorg/jets3t/service/StorageService;->assertValidObject(Lorg/jets3t/service/model/StorageObject;Ljava/lang/String;)V

    .line 2865
    invoke-virtual {p3}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 2866
    .local v1, "objectKey":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jets3t/service/model/StorageObject;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v0

    .line 2867
    .local v0, "acl":Lorg/jets3t/service/acl/AccessControlList;
    if-nez v0, :cond_0

    .line 2868
    new-instance v3, Lorg/jets3t/service/S3ServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The object \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' does not include ACL information"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2872
    .end local v0    # "acl":Lorg/jets3t/service/acl/AccessControlList;
    .end local v1    # "objectKey":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2873
    .local v2, "se":Lorg/jets3t/service/ServiceException;
    new-instance v3, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v3, v2}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v3

    .line 2871
    .end local v2    # "se":Lorg/jets3t/service/ServiceException;
    .restart local v0    # "acl":Lorg/jets3t/service/acl/AccessControlList;
    .restart local v1    # "objectKey":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v0, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->putObjectAclImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2875
    return-void
.end method

.method public setBucketLoggingStatus(Ljava/lang/String;Lorg/jets3t/service/model/S3BucketLoggingStatus;Z)V
    .locals 12
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "status"    # Lorg/jets3t/service/model/S3BucketLoggingStatus;
    .param p3, "updateTargetACLifRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3054
    :try_start_0
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz p3, :cond_6

    .line 3056
    sget-object v9, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3057
    sget-object v9, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Checking whether the target logging bucket \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->getTargetBucketName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' has the appropriate ACL settings"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 3060
    :cond_0
    const/4 v5, 0x0

    .line 3061
    .local v5, "isSetLoggingGroupWrite":Z
    const/4 v4, 0x0

    .line 3062
    .local v4, "isSetLoggingGroupReadACP":Z
    sget-object v9, Lorg/jets3t/service/acl/GroupGrantee;->LOG_DELIVERY:Lorg/jets3t/service/acl/GroupGrantee;

    invoke-virtual {v9}, Lorg/jets3t/service/acl/GroupGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 3064
    .local v2, "groupIdentifier":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->getTargetBucketName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/jets3t/service/StorageService;->getBucketAcl(Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v7

    .line 3066
    .local v7, "logBucketACL":Lorg/jets3t/service/acl/AccessControlList;
    invoke-virtual {v7}, Lorg/jets3t/service/acl/AccessControlList;->getGrantAndPermissions()[Lorg/jets3t/service/acl/GrantAndPermission;

    move-result-object v0

    .local v0, "arr$":[Lorg/jets3t/service/acl/GrantAndPermission;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v1, v0, v3

    .line 3067
    .local v1, "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    invoke-virtual {v1}, Lorg/jets3t/service/acl/GrantAndPermission;->getGrantee()Lorg/jets3t/service/acl/GranteeInterface;

    move-result-object v9

    invoke-interface {v9}, Lorg/jets3t/service/acl/GranteeInterface;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3069
    invoke-virtual {v1}, Lorg/jets3t/service/acl/GrantAndPermission;->getPermission()Lorg/jets3t/service/acl/Permission;

    move-result-object v9

    sget-object v10, Lorg/jets3t/service/acl/Permission;->PERMISSION_WRITE:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v9, v10}, Lorg/jets3t/service/acl/Permission;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3070
    const/4 v5, 0x1

    .line 3071
    sget-object v9, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3072
    sget-object v9, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Target bucket \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->getTargetBucketName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' has ACL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lorg/jets3t/service/acl/Permission;->PERMISSION_WRITE:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 3066
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3076
    :cond_2
    invoke-virtual {v1}, Lorg/jets3t/service/acl/GrantAndPermission;->getPermission()Lorg/jets3t/service/acl/Permission;

    move-result-object v9

    sget-object v10, Lorg/jets3t/service/acl/Permission;->PERMISSION_READ_ACP:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v9, v10}, Lorg/jets3t/service/acl/Permission;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3077
    const/4 v4, 0x1

    .line 3078
    sget-object v9, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3079
    sget-object v9, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Target bucket \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->getTargetBucketName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' has ACL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lorg/jets3t/service/acl/Permission;->PERMISSION_READ_ACP:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3106
    .end local v0    # "arr$":[Lorg/jets3t/service/acl/GrantAndPermission;
    .end local v1    # "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    .end local v2    # "groupIdentifier":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "isSetLoggingGroupReadACP":Z
    .end local v5    # "isSetLoggingGroupWrite":Z
    .end local v6    # "len$":I
    .end local v7    # "logBucketACL":Lorg/jets3t/service/acl/AccessControlList;
    :catch_0
    move-exception v8

    .line 3107
    .local v8, "se":Lorg/jets3t/service/ServiceException;
    new-instance v9, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v9, v8}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v9

    .line 3088
    .end local v8    # "se":Lorg/jets3t/service/ServiceException;
    .restart local v0    # "arr$":[Lorg/jets3t/service/acl/GrantAndPermission;
    .restart local v2    # "groupIdentifier":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "isSetLoggingGroupReadACP":Z
    .restart local v5    # "isSetLoggingGroupWrite":Z
    .restart local v6    # "len$":I
    .restart local v7    # "logBucketACL":Lorg/jets3t/service/acl/AccessControlList;
    :cond_3
    if-eqz v5, :cond_4

    if-nez v4, :cond_7

    .line 3089
    :cond_4
    :try_start_1
    sget-object v9, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3090
    sget-object v9, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Target logging bucket \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->getTargetBucketName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' does not have the necessary ACL settings, updating ACL now"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 3094
    :cond_5
    sget-object v9, Lorg/jets3t/service/acl/GroupGrantee;->LOG_DELIVERY:Lorg/jets3t/service/acl/GroupGrantee;

    sget-object v10, Lorg/jets3t/service/acl/Permission;->PERMISSION_WRITE:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v7, v9, v10}, Lorg/jets3t/service/acl/AccessControlList;->grantPermission(Lorg/jets3t/service/acl/GranteeInterface;Lorg/jets3t/service/acl/Permission;)V

    .line 3095
    sget-object v9, Lorg/jets3t/service/acl/GroupGrantee;->LOG_DELIVERY:Lorg/jets3t/service/acl/GroupGrantee;

    sget-object v10, Lorg/jets3t/service/acl/Permission;->PERMISSION_READ_ACP:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v7, v9, v10}, Lorg/jets3t/service/acl/AccessControlList;->grantPermission(Lorg/jets3t/service/acl/GranteeInterface;Lorg/jets3t/service/acl/Permission;)V

    .line 3096
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->getTargetBucketName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Lorg/jets3t/service/StorageService;->putBucketAcl(Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V

    .line 3105
    .end local v0    # "arr$":[Lorg/jets3t/service/acl/GrantAndPermission;
    .end local v2    # "groupIdentifier":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "isSetLoggingGroupReadACP":Z
    .end local v5    # "isSetLoggingGroupWrite":Z
    .end local v6    # "len$":I
    .end local v7    # "logBucketACL":Lorg/jets3t/service/acl/AccessControlList;
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->setBucketLoggingStatusImpl(Ljava/lang/String;Lorg/jets3t/service/model/StorageBucketLoggingStatus;)V

    .line 3109
    return-void

    .line 3098
    .restart local v0    # "arr$":[Lorg/jets3t/service/acl/GrantAndPermission;
    .restart local v2    # "groupIdentifier":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "isSetLoggingGroupReadACP":Z
    .restart local v5    # "isSetLoggingGroupWrite":Z
    .restart local v6    # "len$":I
    .restart local v7    # "logBucketACL":Lorg/jets3t/service/acl/AccessControlList;
    :cond_7
    sget-object v9, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3099
    sget-object v9, Lorg/jets3t/service/S3Service;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Target logging bucket \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->getTargetBucketName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' has the necessary ACL settings"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setBucketPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "policyDocument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3121
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/S3Service;->setBucketPolicyImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    return-void
.end method

.method protected abstract setBucketPolicyImpl(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public setNotificationConfig(Ljava/lang/String;Lorg/jets3t/service/model/NotificationConfig;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/jets3t/service/model/NotificationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3758
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/S3Service;->setNotificationConfigImpl(Ljava/lang/String;Lorg/jets3t/service/model/NotificationConfig;)V

    .line 3759
    return-void
.end method

.method protected abstract setNotificationConfigImpl(Ljava/lang/String;Lorg/jets3t/service/model/NotificationConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public setRequesterPaysBucket(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "requesterPays"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3197
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/S3Service;->setRequesterPaysBucketImpl(Ljava/lang/String;Z)V

    .line 3198
    return-void
.end method

.method protected abstract setRequesterPaysBucketImpl(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public setWebsiteConfig(Ljava/lang/String;Lorg/jets3t/service/model/WebsiteConfig;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/jets3t/service/model/WebsiteConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3720
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/S3Service;->setWebsiteConfigImpl(Ljava/lang/String;Lorg/jets3t/service/model/WebsiteConfig;)V

    .line 3721
    return-void
.end method

.method protected abstract setWebsiteConfigImpl(Ljava/lang/String;Lorg/jets3t/service/model/WebsiteConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method

.method public suspendBucketVersioning(Ljava/lang/String;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2058
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->updateBucketVersioningStatusImpl(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 2059
    return-void
.end method

.method public suspendBucketVersioningWithMFA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "multiFactorSerialNumber"    # Ljava/lang/String;
    .param p3, "multiFactorAuthCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2077
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->updateBucketVersioningStatusImpl(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 2079
    return-void
.end method

.method public unsetNotificationConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 3781
    new-instance v0, Lorg/jets3t/service/model/NotificationConfig;

    invoke-direct {v0}, Lorg/jets3t/service/model/NotificationConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/S3Service;->setNotificationConfigImpl(Ljava/lang/String;Lorg/jets3t/service/model/NotificationConfig;)V

    .line 3782
    return-void
.end method

.method protected abstract updateBucketVersioningStatusImpl(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation
.end method
