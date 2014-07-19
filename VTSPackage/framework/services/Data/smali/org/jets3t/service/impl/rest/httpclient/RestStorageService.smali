.class public abstract Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;
.super Lorg/jets3t/service/StorageService;
.source "RestStorageService.java"

# interfaces
.implements Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field protected credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

.field protected defaultServerSideEncryptionAlgorithm:Ljava/lang/String;

.field protected defaultStorageClass:Ljava/lang/String;

.field protected httpClient:Lorg/apache/http/client/HttpClient;

.field protected volatile shuttingDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;
    .param p3, "credentialsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    .prologue
    .line 130
    sget-object v0, Lorg/jets3t/service/Constants;->JETS3T_PROPERTIES_FILENAME:Ljava/lang/String;

    invoke-static {v0}, Lorg/jets3t/service/Jets3tProperties;->getInstance(Ljava/lang/String;)Lorg/jets3t/service/Jets3tProperties;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;Lorg/jets3t/service/Jets3tProperties;)V
    .locals 3
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;
    .param p3, "credentialsProvider"    # Lorg/apache/http/client/CredentialsProvider;
    .param p4, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p4}, Lorg/jets3t/service/StorageService;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/jets3t/service/Jets3tProperties;)V

    .line 154
    iput-object p3, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    .line 156
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "s3service.default-storage-class"

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->defaultStorageClass:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "s3service.server-side-encryption"

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->defaultServerSideEncryptionAlgorithm:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->initializeDefaults()V

    .line 161
    return-void
.end method

.method private convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 790
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_0

    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 791
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 793
    :cond_0
    return-object v1
.end method

.method private getObjectImpl(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;
    .locals 12
    .param p1, "headOnly"    # Z
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p6, "ifMatchTags"    # [Ljava/lang/String;
    .param p7, "ifNoneMatchTags"    # [Ljava/lang/String;
    .param p8, "byteRangeStart"    # Ljava/lang/Long;
    .param p9, "byteRangeEnd"    # Ljava/lang/Long;
    .param p10, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 2096
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2097
    sget-object v10, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retrieving "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p1, :cond_8

    const-string v9, "Head"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " information for bucket "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " and object "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2101
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2102
    .local v5, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2104
    .local v6, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_1

    .line 2105
    const-string v9, "If-Modified-Since"

    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Lorg/jets3t/service/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2108
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Only retrieve object if-modified-since:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2111
    :cond_1
    if-eqz p5, :cond_2

    .line 2112
    const-string v9, "If-Unmodified-Since"

    invoke-virtual/range {p5 .. p5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Lorg/jets3t/service/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2115
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Only retrieve object if-unmodified-since:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2118
    :cond_2
    if-eqz p6, :cond_3

    .line 2119
    const-string v9, ","

    move-object/from16 v0, p6

    invoke-static {v0, v9}, Lorg/jets3t/service/utils/ServiceUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2120
    .local v8, "tags":Ljava/lang/String;
    const-string v9, "If-Match"

    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2122
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Only retrieve object based on hash comparison if-match:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2125
    .end local v8    # "tags":Ljava/lang/String;
    :cond_3
    if-eqz p7, :cond_4

    .line 2126
    const-string v9, ","

    move-object/from16 v0, p7

    invoke-static {v0, v9}, Lorg/jets3t/service/utils/ServiceUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2127
    .restart local v8    # "tags":Ljava/lang/String;
    const-string v9, "If-None-Match"

    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2129
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Only retrieve object based on hash comparison if-none-match:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2132
    .end local v8    # "tags":Ljava/lang/String;
    :cond_4
    if-nez p8, :cond_5

    if-eqz p9, :cond_6

    .line 2133
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p8, :cond_9

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p9, :cond_a

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2137
    .local v3, "range":Ljava/lang/String;
    const-string v9, "Range"

    invoke-interface {v5, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2139
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Only retrieve object if it is within range:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2142
    .end local v3    # "range":Ljava/lang/String;
    :cond_6
    if-eqz p10, :cond_7

    .line 2143
    const-string v9, "versionId"

    move-object/from16 v0, p10

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    :cond_7
    const/4 v1, 0x0

    .line 2147
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    if-eqz p1, :cond_b

    .line 2148
    invoke-virtual {p0, p2, p3, v6, v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestHead(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 2153
    :goto_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2154
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2156
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->newObject()Lorg/jets3t/service/model/StorageObject;

    move-result-object v7

    .line 2157
    .local v7, "responseObject":Lorg/jets3t/service/model/StorageObject;
    invoke-virtual {v7, p3}, Lorg/jets3t/service/model/StorageObject;->setKey(Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v7, p2}, Lorg/jets3t/service/model/StorageObject;->setBucketName(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestMetadataPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v9, v10}, Lorg/jets3t/service/utils/ServiceUtils;->cleanRestMetadataMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jets3t/service/model/StorageObject;->replaceAllMetadata(Ljava/util/Map;)V

    .line 2161
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lorg/jets3t/service/model/StorageObject;->setMetadataComplete(Z)V

    .line 2162
    if-nez p1, :cond_c

    .line 2163
    new-instance v4, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v4, v1}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 2164
    .local v4, "releaseIS":Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;
    invoke-virtual {v7, v4}, Lorg/jets3t/service/model/StorageObject;->setDataInputStream(Ljava/io/InputStream;)V

    .line 2173
    .end local v4    # "releaseIS":Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;
    :goto_4
    return-object v7

    .line 2097
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "responseObject":Lorg/jets3t/service/model/StorageObject;
    :cond_8
    const-string v9, "All"

    goto/16 :goto_0

    .line 2133
    .restart local v5    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const-string v9, ""

    goto/16 :goto_1

    :cond_a
    const-string v9, ""

    goto :goto_2

    .line 2150
    .restart local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_b
    invoke-virtual {p0, p2, p3, v6, v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_3

    .line 2167
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "responseObject":Lorg/jets3t/service/model/StorageObject;
    :cond_c
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2168
    sget-object v9, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v10, "Releasing HttpMethod after HEAD"

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2170
    :cond_d
    invoke-direct {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    goto :goto_4
.end method

.method private getObjectWithSignedUrlImpl(Ljava/lang/String;Z)Lorg/jets3t/service/model/S3Object;
    .locals 11
    .param p1, "signedGetOrHeadUrl"    # Ljava/lang/String;
    .param p2, "headOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 2392
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v6

    .line 2394
    .local v6, "s3Endpoint":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2395
    .local v1, "httpMethod":Lorg/apache/http/client/methods/HttpRequestBase;
    if-eqz p2, :cond_0

    .line 2396
    new-instance v1, Lorg/apache/http/client/methods/HttpHead;

    .end local v1    # "httpMethod":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 2401
    .restart local v1    # "httpMethod":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_0
    new-array v7, v10, [I

    const/4 v8, 0x0

    const/16 v9, 0xc8

    aput v9, v7, v8

    invoke-virtual {p0, v1, v7}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 2403
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2404
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2406
    const/4 v5, 0x0

    .line 2408
    .local v5, "responseObject":Lorg/jets3t/service/model/S3Object;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lorg/jets3t/service/utils/ServiceUtils;->buildObjectFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2416
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestMetadataPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lorg/jets3t/service/utils/ServiceUtils;->cleanRestMetadataMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/jets3t/service/model/S3Object;->replaceAllMetadata(Ljava/util/Map;)V

    .line 2418
    invoke-virtual {v5, v10}, Lorg/jets3t/service/model/S3Object;->setMetadataComplete(Z)V

    .line 2419
    if-nez p2, :cond_1

    .line 2420
    new-instance v4, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v4, v2}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 2421
    .local v4, "releaseIS":Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;
    invoke-virtual {v5, v4}, Lorg/jets3t/service/model/S3Object;->setDataInputStream(Ljava/io/InputStream;)V

    .line 2430
    .end local v4    # "releaseIS":Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;
    :goto_1
    return-object v5

    .line 2398
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "responseObject":Lorg/jets3t/service/model/S3Object;
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    .end local v1    # "httpMethod":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v1    # "httpMethod":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_0

    .line 2412
    .restart local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "responseObject":Lorg/jets3t/service/model/S3Object;
    :catch_0
    move-exception v0

    .line 2413
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lorg/jets3t/service/ServiceException;

    const-string v8, "Unable to determine name of object created with signed PUT"

    invoke-direct {v7, v8, v0}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 2424
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    sget-object v7, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2425
    sget-object v7, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Releasing HttpMethod after HEAD"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2427
    :cond_2
    invoke-direct {p0, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    goto :goto_1
.end method

.method private releaseConnection(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .param p1, "pResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 1272
    if-nez p1, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1276
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1277
    :catch_0
    move-exception v0

    .line 1278
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to consume response entity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected addMetadataToHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 17
    .param p1, "httpMethod"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 813
    .local p2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v14

    invoke-direct {v6, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 815
    .local v6, "headersAlreadySeenMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 816
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 817
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 819
    .local v10, "objValue":Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 824
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 828
    .local v13, "value":Ljava/lang/String;
    const/4 v12, 0x0

    .line 829
    .local v12, "validAscii":Z
    const/4 v4, 0x0

    .line 831
    .local v4, "encodingException":Ljava/io/UnsupportedEncodingException;
    :try_start_0
    const-string v14, "ASCII"

    invoke-virtual {v8, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 832
    .local v1, "asciiBytes":[B
    const-string v14, "UTF-8"

    invoke-virtual {v8, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 833
    .local v11, "utf8Bytes":[B
    invoke-static {v1, v11}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 838
    .end local v1    # "asciiBytes":[B
    .end local v11    # "utf8Bytes":[B
    :goto_1
    if-nez v12, :cond_2

    .line 839
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "User metadata name is incompatible with the S3 REST interface, only ASCII characters are allowed in HTTP headers: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 842
    .local v9, "message":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 843
    new-instance v14, Lorg/jets3t/service/ServiceException;

    invoke-direct {v14, v9}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 834
    .end local v9    # "message":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 836
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    move-object v4, v3

    goto :goto_1

    .line 845
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v9    # "message":Ljava/lang/String;
    :cond_1
    new-instance v14, Lorg/jets3t/service/ServiceException;

    invoke-direct {v14, v9, v4}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 852
    .end local v9    # "message":Ljava/lang/String;
    :cond_2
    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_3

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_4

    .line 853
    :cond_3
    new-instance v14, Lorg/jets3t/service/ServiceException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The value of metadata item "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " cannot be represented as an HTTP header for the REST S3 interface: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 859
    :cond_4
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 860
    .local v2, "duplicateValue":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 861
    new-instance v14, Lorg/jets3t/service/ServiceException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HTTP header name occurs multiple times in request with different values, probably due to mismatched capitalization when setting metadata names. Duplicate metadata name: \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\', All metadata: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 869
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string v15, "PUT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "Content-Length"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 871
    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_7
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 875
    .end local v2    # "duplicateValue":Ljava/lang/String;
    .end local v4    # "encodingException":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "objValue":Ljava/lang/Object;
    .end local v12    # "validAscii":Z
    .end local v13    # "value":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method protected addRequestHeadersToConnection(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 7
    .param p1, "httpMethod"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 769
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_1

    .line 770
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 771
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 772
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 774
    .local v3, "value":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 776
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added request header to connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 780
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected addRequestParametersToUrlPath(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "urlPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 735
    .local p2, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    .line 736
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 737
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 738
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 740
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    const-string v4, "?"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 742
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 744
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 745
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added request parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 740
    :cond_1
    const-string v4, "&"

    goto :goto_1

    .line 748
    :cond_2
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 749
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added request parameter without value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 754
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    return-object p1
.end method

.method public authorizeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 17
    .param p1, "httpMethod"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getProviderCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 643
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding authorization for Access Key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getProviderCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 654
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v15

    .line 655
    .local v15, "uri":Ljava/net/URI;
    invoke-virtual {v15}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 662
    .local v10, "hostname":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 663
    .local v16, "xfullUrl":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, "fullUrl":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v12

    .line 667
    .local v12, "s3Endpoint":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 669
    .local v14, "subdomainOffset":I
    if-lez v14, :cond_7

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v10, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 678
    .end local v14    # "subdomainOffset":I
    :cond_1
    :goto_0
    invoke-virtual {v15}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v11

    .line 679
    .local v11, "queryString":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    :cond_2
    const-string v1, "Date"

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getCurrentTimeWithOffset()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lorg/jets3t/service/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 690
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For creating canonical string, using uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 694
    :cond_3
    const/4 v8, 0x0

    .line 696
    .local v8, "canonicalString":Ljava/lang/String;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getResourceParameterNames()Ljava/util/List;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lorg/jets3t/service/utils/RestUtils;->makeServiceCanonicalString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 707
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 708
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canonical string (\'|\' is a newline): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x7c

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 712
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getProviderCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jets3t/service/security/ProviderCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lorg/jets3t/service/utils/ServiceUtils;->signWithHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 716
    .local v13, "signedCanonical":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getSignatureIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getProviderCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 718
    .local v7, "authorizationString":Ljava/lang/String;
    const-string v1, "Authorization"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .end local v2    # "fullUrl":Ljava/lang/String;
    .end local v7    # "authorizationString":Ljava/lang/String;
    .end local v8    # "canonicalString":Ljava/lang/String;
    .end local v10    # "hostname":Ljava/lang/String;
    .end local v11    # "queryString":Ljava/lang/String;
    .end local v12    # "s3Endpoint":Ljava/lang/String;
    .end local v13    # "signedCanonical":Ljava/lang/String;
    .end local v15    # "uri":Ljava/net/URI;
    .end local v16    # "xfullUrl":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 648
    :cond_6
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 649
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Service has no Credential and is un-authenticated, skipping authorization"

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 674
    .restart local v2    # "fullUrl":Ljava/lang/String;
    .restart local v10    # "hostname":Ljava/lang/String;
    .restart local v12    # "s3Endpoint":Ljava/lang/String;
    .restart local v14    # "subdomainOffset":I
    .restart local v15    # "uri":Ljava/net/URI;
    .restart local v16    # "xfullUrl":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 704
    .end local v14    # "subdomainOffset":I
    .restart local v8    # "canonicalString":Ljava/lang/String;
    .restart local v11    # "queryString":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 705
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkBucketStatus(Ljava/lang/String;)I
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1321
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1322
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking availability of bucket name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1325
    :cond_0
    const/4 v1, 0x0

    .line 1330
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1331
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "max-keys"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v2, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestHead(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1334
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1356
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Releasing un-wanted bucket HEAD response"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1358
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 1362
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "e":Lorg/jets3t/service/ServiceException;
    :try_start_1
    invoke-virtual {v0}, Lorg/jets3t/service/ServiceException;->getResponseCode()I

    move-result v3

    const/16 v4, 0x193

    if-ne v3, v4, :cond_4

    .line 1337
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1338
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bucket named \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' exists but is inaccessible, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "probably belongs to another user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1341
    :cond_2
    const/4 v3, 0x2

    .line 1355
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1356
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Releasing un-wanted bucket HEAD response"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1358
    :cond_3
    :goto_2
    invoke-direct {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    .line 1342
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lorg/jets3t/service/ServiceException;->getResponseCode()I

    move-result v3

    const/16 v4, 0x194

    if-ne v3, v4, :cond_6

    .line 1343
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1344
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bucket does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1346
    :cond_5
    const/4 v3, 0x1

    .line 1355
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1356
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Releasing un-wanted bucket HEAD response"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    .line 1348
    :cond_6
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1355
    .end local v0    # "e":Lorg/jets3t/service/ServiceException;
    :catchall_0
    move-exception v3

    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1356
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Releasing un-wanted bucket HEAD response"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1358
    :cond_7
    invoke-direct {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 1355
    throw v3

    .line 1350
    :catch_1
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1352
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unable to close response body input stream"

    invoke-interface {v3, v4, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1355
    :cond_8
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1356
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Releasing un-wanted bucket HEAD response"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected copyObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/util/Map;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 17
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "sourceObjectKey"    # Ljava/lang/String;
    .param p3, "destinationBucketName"    # Ljava/lang/String;
    .param p4, "destinationObjectKey"    # Ljava/lang/String;
    .param p5, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .param p7, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p8, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p9, "ifMatchTags"    # [Ljava/lang/String;
    .param p10, "ifNoneMatchTags"    # [Ljava/lang/String;
    .param p11, "versionId"    # Ljava/lang/String;
    .param p12, "destinationObjectStorageClass"    # Ljava/lang/String;
    .param p13, "destinationObjectServerSideEncryptionAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/acl/AccessControlList;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1968
    .local p6, "destinationMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1969
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying Object from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1973
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1975
    .local v7, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1977
    .local v15, "sourceKey":Ljava/lang/String;
    if-eqz p11, :cond_1

    .line 1978
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?versionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1981
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "copy-source"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    move-object/from16 v2, p4

    invoke-virtual {v0, v7, v1, v4, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->prepareStorageClass(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1984
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    move-object/from16 v2, p4

    invoke-virtual {v0, v7, v1, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->prepareServerSideEncryption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    if-eqz p6, :cond_7

    .line 1987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "metadata-directive"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "REPLACE"

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    move-object/from16 v0, p6

    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1991
    const-string v4, "Content-Type"

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1992
    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v7, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->prepareRESTHeaderAcl(Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v12, 0x1

    .line 2000
    .local v12, "isExtraAclPutRequired":Z
    :goto_1
    if-eqz p7, :cond_3

    .line 2001
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "copy-source-if-modified-since"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p7 .. p7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lorg/jets3t/service/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2004
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only copy object if-modified-since:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2007
    :cond_3
    if-eqz p8, :cond_4

    .line 2008
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "copy-source-if-unmodified-since"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p8 .. p8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lorg/jets3t/service/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2011
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only copy object if-unmodified-since:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2014
    :cond_4
    if-eqz p9, :cond_5

    .line 2015
    const-string v4, ","

    move-object/from16 v0, p9

    invoke-static {v0, v4}, Lorg/jets3t/service/utils/ServiceUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2016
    .local v16, "tags":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "copy-source-if-match"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2018
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only copy object based on hash comparison if-match:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2021
    .end local v16    # "tags":Ljava/lang/String;
    :cond_5
    if-eqz p10, :cond_6

    .line 2022
    const-string v4, ","

    move-object/from16 v0, p10

    invoke-static {v0, v4}, Lorg/jets3t/service/utils/ServiceUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2023
    .restart local v16    # "tags":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "copy-source-if-none-match"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2025
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only copy object based on hash comparison if-none-match:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2029
    .end local v16    # "tags":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v4 .. v10}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;

    move-result-object v14

    .line 2032
    .local v14, "methodAndByteCount":Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v4

    new-instance v5, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-virtual {v14}, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v4, v5}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseCopyObjectResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;

    move-result-object v11

    .line 2038
    .local v11, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;
    invoke-virtual {v14}, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 2040
    invoke-virtual {v11}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->isErrorResponse()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2041
    new-instance v4, Lorg/jets3t/service/ServiceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copy failed: Code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", RequestId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", HostId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorHostId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1995
    .end local v11    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;
    .end local v12    # "isExtraAclPutRequired":Z
    .end local v14    # "methodAndByteCount":Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "metadata-directive"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "COPY"

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1998
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 2048
    .restart local v11    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;
    .restart local v12    # "isExtraAclPutRequired":Z
    .restart local v14    # "methodAndByteCount":Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    :cond_9
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2051
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "Last-Modified"

    invoke-virtual {v11}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->getLastModified()Ljava/util/Date;

    move-result-object v5

    invoke-interface {v13, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    const-string v4, "ETag"

    invoke-virtual {v11}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->getETag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    invoke-virtual {v14}, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2056
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestMetadataPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v4, v5}, Lorg/jets3t/service/utils/ServiceUtils;->cleanRestMetadataMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    .line 2059
    if-eqz v12, :cond_b

    .line 2060
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2061
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Creating object with a non-canned ACL using REST, so an extra ACL Put is required"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2063
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->putAclImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)V

    .line 2066
    :cond_b
    return-object v13
.end method

.method protected createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/util/Map;)Lorg/jets3t/service/model/StorageBucket;
    .locals 16
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/acl/AccessControlList;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/jets3t/service/model/StorageBucket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1633
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1634
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating bucket with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1637
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1638
    .local v6, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p4

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1639
    const/4 v5, 0x0

    .line 1641
    .local v5, "requestEntity":Lorg/apache/http/HttpEntity;
    if-eqz p2, :cond_1

    const-string v1, "US"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1642
    const-string v1, "Content-Type"

    const-string v2, "text/xml"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    :try_start_0
    new-instance v12, Lorg/jets3t/service/model/CreateBucketConfiguration;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/jets3t/service/model/CreateBucketConfiguration;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v12, "config":Lorg/jets3t/service/model/CreateBucketConfiguration;
    invoke-virtual {v12}, Lorg/jets3t/service/model/CreateBucketConfiguration;->toXml()Ljava/lang/String;

    move-result-object v13

    .line 1646
    .local v13, "configXml":Ljava/lang/String;
    const-string v1, "Content-Length"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    .end local v5    # "requestEntity":Lorg/apache/http/HttpEntity;
    const-string v1, "text/xml"

    sget-object v2, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, v13, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    .end local v12    # "config":Lorg/jets3t/service/model/CreateBucketConfiguration;
    .end local v13    # "configXml":Ljava/lang/String;
    .restart local v5    # "requestEntity":Lorg/apache/http/HttpEntity;
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v10}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->createObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/Map;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 1656
    .local v15, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->newBucket()Lorg/jets3t/service/model/StorageBucket;

    move-result-object v11

    .line 1657
    .local v11, "bucket":Lorg/jets3t/service/model/StorageBucket;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/jets3t/service/model/StorageBucket;->setName(Ljava/lang/String;)V

    .line 1658
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/jets3t/service/model/StorageBucket;->setLocation(Ljava/lang/String;)V

    .line 1659
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lorg/jets3t/service/model/StorageBucket;->setAcl(Lorg/jets3t/service/acl/AccessControlList;)V

    .line 1660
    invoke-virtual {v11, v15}, Lorg/jets3t/service/model/StorageBucket;->replaceAllMetadata(Ljava/util/Map;)V

    .line 1661
    return-object v11

    .line 1648
    .end local v5    # "requestEntity":Lorg/apache/http/HttpEntity;
    .end local v11    # "bucket":Lorg/jets3t/service/model/StorageBucket;
    .end local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v14

    .line 1649
    .local v14, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jets3t/service/ServiceException;

    const-string v2, "Unable to encode CreateBucketConfiguration XML document"

    invoke-direct {v1, v2, v14}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/Map;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 15
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "requestEntity"    # Lorg/apache/http/HttpEntity;
    .param p7, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .param p8, "storageClass"    # Ljava/lang/String;
    .param p9, "serverSideEncryptionAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jets3t/service/acl/AccessControlList;",
            "Ljava/lang/String;",
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
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1833
    .local p5, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p5, :cond_3

    .line 1834
    new-instance p5, Ljava/util/HashMap;

    .end local p5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p5 .. p5}, Ljava/util/HashMap;-><init>()V

    .line 1839
    .restart local p5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    if-eqz p3, :cond_4

    .line 1840
    const-string v3, "Content-Type"

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    :goto_1
    const/4 v3, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, p8

    move-object/from16 v2, p2

    invoke-virtual {p0, v0, v1, v3, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->prepareStorageClass(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1847
    move-object/from16 v0, p5

    move-object/from16 v1, p9

    move-object/from16 v2, p2

    invoke-virtual {p0, v0, v1, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->prepareServerSideEncryption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->prepareRESTHeaderAcl(Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v11, 0x1

    .line 1851
    .local v11, "isExtraAclPutRequired":Z
    :goto_2
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1852
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating object bucketName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", objectKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", storageClass="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Content-Type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Content-Type"

    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Including data? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p4, :cond_6

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Metadata: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ACL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1862
    :cond_0
    const/4 v9, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;

    move-result-object v14

    .line 1866
    .local v14, "methodAndByteCount":Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    invoke-virtual {v14}, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 1868
    .local v10, "httpResponse":Lorg/apache/http/HttpResponse;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1869
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p5

    invoke-interface {v12, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1870
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1871
    const-string v3, "Content-Length"

    invoke-virtual {v14}, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;->getByteCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestMetadataPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v3, v4}, Lorg/jets3t/service/utils/ServiceUtils;->cleanRestMetadataMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 1875
    if-eqz v11, :cond_2

    .line 1876
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1877
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Creating object with a non-canned ACL using REST, so an extra ACL Put is required"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1879
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->putAclImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)V

    .line 1882
    :cond_2
    return-object v12

    .line 1837
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "isExtraAclPutRequired":Z
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "methodAndByteCount":Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    :cond_3
    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .end local p5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 p5, v13

    .end local v13    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 1842
    :cond_4
    const-string v3, "Content-Type"

    const-string v4, "application/octet-stream"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1849
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1852
    .restart local v11    # "isExtraAclPutRequired":Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_3
.end method

.method protected deleteBucketImpl(Ljava/lang/String;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1666
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    .line 1667
    return-void
.end method

.method protected deleteObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "multiFactorSerialNumber"    # Ljava/lang/String;
    .param p5, "multiFactorAuthCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1525
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1526
    .local v3, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 1527
    const-string v0, "versionId"

    invoke-interface {v3, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 1529
    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    .line 1531
    return-void
.end method

.method public deleteObjectWithSignedUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "signedDeleteUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 2282
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 2283
    .local v0, "deleteMethod":Lorg/apache/http/client/methods/HttpDelete;
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, v0, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 2284
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 2285
    return-void

    .line 2283
    nop

    :array_0
    .array-data 4
        0xcc
        0xc8
    .end array-data
.end method

.method protected getAccountOwnerImpl()Lorg/jets3t/service/model/StorageOwner;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1389
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1390
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Looking up owner of S3 account via the ListAllBuckets response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getProviderCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1394
    :cond_0
    const-string v0, ""

    .line 1395
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p0, v0, v7, v7, v7}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1396
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    const-string v4, "Content-Type"

    invoke-interface {v2, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1398
    .local v1, "contentType":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->isXmlContentType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1399
    new-instance v4, Lorg/jets3t/service/ServiceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected XML document response from S3 but received content type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1403
    :cond_1
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v4

    new-instance v5, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v5, v2}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v4, v5}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseListMyBucketsResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->getOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v3

    .line 1406
    .local v3, "owner":Lorg/jets3t/service/model/StorageOwner;
    return-object v3
.end method

.method protected getBucketAclImpl(Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1573
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1574
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving Access Control List for Bucket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1577
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1578
    .local v1, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "acl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    invoke-virtual {p0, p1, v5, v1, v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1581
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v2

    new-instance v3, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v3, v0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v2, v3}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseAccessControlListResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/AccessControlListHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->getAccessControlList()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v2

    return-object v2
.end method

.method protected getBucketLocationImpl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1683
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1684
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving location of Bucket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1687
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1688
    .local v1, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "location"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    invoke-virtual {p0, p1, v5, v1, v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1691
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v2

    new-instance v3, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v3, v0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v2, v3}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseBucketLocationResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getBucketLoggingStatusImpl(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucketLoggingStatus;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1699
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1700
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving Logging Status for Bucket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1703
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1704
    .local v1, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "logging"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    invoke-virtual {p0, p1, v5, v1, v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1707
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v2

    new-instance v3, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v3, v0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v2, v3}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseLoggingStatusResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->getBucketLoggingStatus()Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    move-result-object v2

    return-object v2
.end method

.method public getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public getHttpConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method protected getObjectAclImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1536
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1537
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving Access Control List for bucketName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", objectKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1541
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1542
    .local v1, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "acl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1545
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v2

    new-instance v3, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v3, v0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v2, v3}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseAccessControlListResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/AccessControlListHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->getAccessControlList()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v2

    return-object v2
.end method

.method protected getObjectAclImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1554
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1555
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving versioned Access Control List for bucketName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", objectKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1559
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1560
    .local v1, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "acl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    if-eqz p3, :cond_1

    .line 1562
    const-string v2, "versionId"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1566
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v2

    new-instance v3, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v3, v0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v2, v3}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseAccessControlListResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/AccessControlListHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->getAccessControlList()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v2

    return-object v2
.end method

.method public getObjectAclWithSignedUrl(Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .locals 6
    .param p1, "signedAclUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 2342
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2344
    .local v0, "httpMethod":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2345
    .local v2, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "acl"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xc8

    aput v5, v3, v4

    invoke-virtual {p0, v0, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 2348
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v3

    new-instance v4, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v4, v1}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v3, v4}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseAccessControlListResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/AccessControlListHandler;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->getAccessControlList()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v3

    return-object v3
.end method

.method protected getObjectDetailsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;
    .locals 11
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p4, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifMatchTags"    # [Ljava/lang/String;
    .param p6, "ifNoneMatchTags"    # [Ljava/lang/String;
    .param p7, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 2075
    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectImpl(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    return-object v0
.end method

.method public getObjectDetailsWithSignedUrl(Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .locals 1
    .param p1, "signedHeadUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 2324
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectWithSignedUrlImpl(Ljava/lang/String;Z)Lorg/jets3t/service/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method protected getObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;
    .locals 11
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p4, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifMatchTags"    # [Ljava/lang/String;
    .param p6, "ifNoneMatchTags"    # [Ljava/lang/String;
    .param p7, "byteRangeStart"    # Ljava/lang/Long;
    .param p8, "byteRangeEnd"    # Ljava/lang/Long;
    .param p9, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 2087
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectImpl(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    return-object v0
.end method

.method public getObjectWithSignedUrl(Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .locals 1
    .param p1, "signedGetUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 2304
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getObjectWithSignedUrlImpl(Ljava/lang/String;Z)Lorg/jets3t/service/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method protected initHttpConnection()Lorg/apache/http/client/HttpClient;
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getInvokingApplicationDescription()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    invoke-static {p0, v0, v1, v2}, Lorg/jets3t/service/utils/RestUtils;->initHttpConnection(Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;Lorg/jets3t/service/Jets3tProperties;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method protected initializeDefaults()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lorg/jets3t/service/StorageService;->initializeDefaults()V

    .line 166
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->initHttpConnection()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 167
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->initializeProxy()V

    .line 168
    return-void
.end method

.method protected initializeProxy()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 172
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-autodetect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jets3t/service/utils/RestUtils;->initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-host"

    invoke-virtual {v0, v1, v8}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "proxyHostAddress":Ljava/lang/String;
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-port"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    .line 177
    .local v4, "proxyPort":I
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-user"

    invoke-virtual {v0, v1, v8}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "proxyUser":Ljava/lang/String;
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-password"

    invoke-virtual {v0, v1, v8}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, "proxyPassword":Ljava/lang/String;
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "httpclient.proxy-domain"

    invoke-virtual {v0, v1, v8}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "proxyDomain":Ljava/lang/String;
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lorg/jets3t/service/utils/RestUtils;->initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isBucketAccessible(Ljava/lang/String;)Z
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1288
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1289
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking existence of bucket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1292
    :cond_0
    const/4 v1, 0x0

    .line 1296
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2, v3, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestHead(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1298
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1310
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Releasing un-wanted bucket HEAD response"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1312
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 1316
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "e":Lorg/jets3t/service/ServiceException;
    :try_start_1
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1301
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bucket does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1303
    :cond_2
    const/4 v2, 0x0

    .line 1309
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1310
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Releasing un-wanted bucket HEAD response"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1312
    :cond_3
    invoke-direct {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    .line 1304
    .end local v0    # "e":Lorg/jets3t/service/ServiceException;
    :catch_1
    move-exception v0

    .line 1305
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1306
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Unable to close response body input stream"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1309
    :cond_4
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1310
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Releasing un-wanted bucket HEAD response"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 1309
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1310
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Releasing un-wanted bucket HEAD response"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1312
    :cond_5
    invoke-direct {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 1309
    throw v2
.end method

.method protected isLiveMD5HashingRequired(Lorg/jets3t/service/model/StorageObject;)Z
    .locals 4
    .param p1, "object"    # Lorg/jets3t/service/model/StorageObject;

    .prologue
    const/4 v1, 0x0

    .line 1672
    const-string v2, "Content-MD5"

    invoke-virtual {p1, v2}, Lorg/jets3t/service/model/StorageObject;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1677
    :cond_0
    :goto_0
    return v1

    .line 1675
    :cond_1
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v3, "storage-service.disable-live-md5"

    invoke-virtual {v2, v3, v1}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 1677
    .local v0, "disableLiveMd5":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isRecoverable403(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "httpRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isTargettingGoogleStorageService()Z
.end method

.method protected isXmlContentType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/xml"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected listAllBucketsImpl(Ljava/util/Map;)[Lorg/jets3t/service/model/StorageBucket;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[",
            "Lorg/jets3t/service/model/StorageBucket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 1367
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1368
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listing all buckets for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getProviderCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1372
    :cond_0
    const-string v0, ""

    .line 1373
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p0, v0, v7, v7, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1374
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    const-string v4, "Content-Type"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1376
    .local v2, "contentType":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->isXmlContentType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1377
    new-instance v4, Lorg/jets3t/service/ServiceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected XML document response from S3 but received content type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1381
    :cond_1
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v4

    new-instance v5, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v5, v3}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v4, v5}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseListMyBucketsResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->getBuckets()[Lorg/jets3t/service/model/StorageBucket;

    move-result-object v1

    .line 1384
    .local v1, "buckets":[Lorg/jets3t/service/model/StorageBucket;
    return-object v1
.end method

.method protected listObjectsChunkedImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lorg/jets3t/service/StorageObjectsChunk;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J
    .param p6, "priorLastKey"    # Ljava/lang/String;
    .param p7, "completeListing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1422
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p7

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->listObjectsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/StorageObjectsChunk;

    move-result-object v0

    return-object v0
.end method

.method protected listObjectsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/StorageObject;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1414
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->listObjectsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/StorageObjectsChunk;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jets3t/service/StorageObjectsChunk;->getObjects()[Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    return-object v0
.end method

.method protected listObjectsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/StorageObjectsChunk;
    .locals 18
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J
    .param p6, "automaticallyMergeChunks"    # Z
    .param p7, "priorLastKey"    # Ljava/lang/String;
    .param p8, "priorLastVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1431
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1432
    .local v15, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 1433
    const-string v2, "prefix"

    move-object/from16 v0, p2

    invoke-interface {v15, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    :cond_0
    if-eqz p3, :cond_1

    .line 1436
    const-string v2, "delimiter"

    move-object/from16 v0, p3

    invoke-interface {v15, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_2

    .line 1439
    const-string v2, "max-keys"

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    .local v14, "objects":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    .local v8, "commonPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 1446
    .local v11, "incompleteListing":Z
    const/4 v12, 0x0

    .line 1448
    .local v12, "ioErrorRetryCount":I
    :cond_3
    :goto_0
    if-eqz v11, :cond_7

    .line 1449
    if-eqz p7, :cond_9

    .line 1450
    const-string v2, "marker"

    move-object/from16 v0, p7

    invoke-interface {v15, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v15, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 1456
    .local v10, "httpResponse":Lorg/apache/http/HttpResponse;
    const/4 v13, 0x0

    .line 1459
    .local v13, "listBucketHandler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    move-result-object v2

    new-instance v3, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-direct {v3, v10}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v2, v3}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseListBucketResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 1462
    const/4 v12, 0x0

    .line 1475
    invoke-virtual {v13}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->getObjects()[Lorg/jets3t/service/model/StorageObject;

    move-result-object v17

    .line 1476
    .local v17, "partialObjects":[Lorg/jets3t/service/model/StorageObject;
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1477
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " objects in one batch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1479
    :cond_4
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1481
    invoke-virtual {v13}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->getCommonPrefixes()[Ljava/lang/String;

    move-result-object v16

    .line 1482
    .local v16, "partialCommonPrefixes":[Ljava/lang/String;
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1483
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

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

    .line 1485
    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1487
    invoke-virtual {v13}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->isListingTruncated()Z

    move-result v11

    .line 1488
    if-eqz v11, :cond_b

    .line 1489
    invoke-virtual {v13}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->getMarkerForNextListing()Ljava/lang/String;

    move-result-object p7

    .line 1490
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1491
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Yet to receive complete listing of bucket contents, last key for prior chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1498
    :cond_6
    :goto_2
    if-nez p6, :cond_3

    .line 1502
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v13    # "listBucketHandler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;
    .end local v16    # "partialCommonPrefixes":[Ljava/lang/String;
    .end local v17    # "partialObjects":[Lorg/jets3t/service/model/StorageObject;
    :cond_7
    if-eqz p6, :cond_c

    .line 1503
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1504
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " objects in total"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1506
    :cond_8
    new-instance v2, Lorg/jets3t/service/StorageObjectsChunk;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v14, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v8, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Lorg/jets3t/service/StorageObjectsChunk;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :goto_3
    return-object v2

    .line 1452
    :cond_9
    const-string v2, "marker"

    invoke-interface {v15, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1463
    .restart local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v13    # "listBucketHandler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;
    :catch_0
    move-exception v9

    .line 1464
    .local v9, "e":Lorg/jets3t/service/ServiceException;
    invoke-virtual {v9}, Lorg/jets3t/service/ServiceException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_a

    const/4 v2, 0x5

    if-ge v12, v2, :cond_a

    .line 1465
    add-int/lit8 v12, v12, 0x1

    .line 1466
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1467
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Retrying bucket listing failure due to IO error"

    invoke-interface {v2, v3, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1471
    :cond_a
    throw v9

    .line 1495
    .end local v9    # "e":Lorg/jets3t/service/ServiceException;
    .restart local v16    # "partialCommonPrefixes":[Ljava/lang/String;
    .restart local v17    # "partialObjects":[Lorg/jets3t/service/model/StorageObject;
    :cond_b
    const/16 p7, 0x0

    goto :goto_2

    .line 1512
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v13    # "listBucketHandler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;
    .end local v16    # "partialCommonPrefixes":[Ljava/lang/String;
    .end local v17    # "partialObjects":[Lorg/jets3t/service/model/StorageObject;
    :cond_c
    new-instance v2, Lorg/jets3t/service/StorageObjectsChunk;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v14, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v8, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lorg/jets3t/service/StorageObjectsChunk;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[I)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "httpMethod"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "expectedResponseCodes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 34
    .param p1, "httpMethod"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "expectedResponseCodes"    # [I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 305
    const/16 v19, 0x0

    .line 307
    .local v19, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 308
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Performing "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " request for \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\', expecting response codes: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lorg/jets3t/service/utils/ServiceUtils;->join([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 312
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Headers: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 316
    :cond_0
    const/4 v4, 0x1

    .line 317
    .local v4, "completedWithoutRecoverableError":Z
    const/4 v10, 0x0

    .line 318
    .local v10, "internalErrorCount":I
    const/16 v18, 0x0

    .line 319
    .local v18, "requestTimeoutErrorCount":I
    const/16 v16, 0x0

    .line 320
    .local v16, "redirectCount":I
    const/4 v3, 0x0

    .line 321
    .local v3, "authFailureCount":I
    const/16 v27, 0x0

    .line 324
    .local v27, "wasRecentlyRedirected":Z
    const/16 v21, -0x1

    .line 327
    .local v21, "responseCode":I
    :cond_1
    if-nez v27, :cond_a

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->authorizeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 334
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->httpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 335
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    .line 337
    const/16 v28, 0x133

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->authorizeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 340
    const-string v28, "location"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    .line 343
    .local v12, "locationHeader":Lorg/apache/http/Header;
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpRequestBase;

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 344
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v28, v0

    new-instance v29, Ljava/net/URI;

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 349
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 350
    add-int/lit8 v16, v16, 0x1

    .line 351
    const/16 v27, 0x1

    .line 353
    const/16 v28, 0x5

    move/from16 v0, v16

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    .line 354
    new-instance v28, Lorg/jets3t/service/ServiceException;

    const-string v29, "Exceeded 307 redirect limit (5)."

    invoke-direct/range {v28 .. v29}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v3    # "authFailureCount":I
    .end local v4    # "completedWithoutRecoverableError":Z
    .end local v10    # "internalErrorCount":I
    .end local v12    # "locationHeader":Lorg/apache/http/Header;
    .end local v16    # "redirectCount":I
    .end local v18    # "requestTimeoutErrorCount":I
    .end local v21    # "responseCode":I
    .end local v27    # "wasRecentlyRedirected":Z
    :catch_0
    move-exception v26

    .line 553
    .local v26, "t":Ljava/lang/Throwable;
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 554
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Rethrowing as a ServiceException error in performRequest: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 555
    .local v13, "msg":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v28

    if-eqz v28, :cond_3

    .line 556
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", with cause: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 558
    :cond_3
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v28

    if-eqz v28, :cond_2f

    .line 559
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v13, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 564
    .end local v13    # "msg":Ljava/lang/String;
    :cond_4
    :goto_2
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->shuttingDown:Z

    move/from16 v28, v0

    if-nez v28, :cond_5

    .line 565
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Releasing HttpClient connection after error: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 567
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 570
    move-object/from16 v0, v26

    instance-of v0, v0, Lorg/jets3t/service/ServiceException;

    move/from16 v28, v0

    if-eqz v28, :cond_30

    move-object/from16 v25, v26

    .line 571
    check-cast v25, Lorg/jets3t/service/ServiceException;

    .line 579
    .local v25, "serviceException":Lorg/jets3t/service/ServiceException;
    :goto_3
    invoke-virtual/range {v25 .. v25}, Lorg/jets3t/service/ServiceException;->isParsedFromXmlMessage()Z

    move-result v28

    if-nez v28, :cond_6

    if-eqz v19, :cond_6

    const-string v28, "x-amz-request-id"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    if-eqz v28, :cond_6

    const-string v28, "x-amz-id-2"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    if-eqz v28, :cond_6

    .line 584
    const-string v28, "x-amz-request-id"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    const-string v29, "x-amz-id-2"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/ServiceException;->setRequestAndHostIds(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/jets3t/service/utils/RestUtils;->convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jets3t/service/ServiceException;->setResponseHeaders(Ljava/util/Map;)V

    .line 590
    :cond_6
    if-eqz v19, :cond_7

    .line 592
    :try_start_1
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jets3t/service/ServiceException;->setResponseCode(I)V

    .line 593
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jets3t/service/ServiceException;->setResponseStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 598
    :cond_7
    :goto_4
    const-string v28, "Host"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    if-eqz v28, :cond_8

    .line 599
    const-string v28, "Host"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jets3t/service/ServiceException;->setRequestHost(Ljava/lang/String;)V

    .line 602
    :cond_8
    if-eqz v19, :cond_9

    const-string v28, "Date"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    if-eqz v28, :cond_9

    .line 603
    const-string v28, "Date"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jets3t/service/ServiceException;->setResponseDate(Ljava/lang/String;)V

    .line 606
    :cond_9
    throw v25

    .line 331
    .end local v25    # "serviceException":Lorg/jets3t/service/ServiceException;
    .end local v26    # "t":Ljava/lang/Throwable;
    .restart local v3    # "authFailureCount":I
    .restart local v4    # "completedWithoutRecoverableError":Z
    .restart local v10    # "internalErrorCount":I
    .restart local v16    # "redirectCount":I
    .restart local v18    # "requestTimeoutErrorCount":I
    .restart local v21    # "responseCode":I
    .restart local v27    # "wasRecentlyRedirected":Z
    :cond_a
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 345
    .restart local v12    # "locationHeader":Lorg/apache/http/Header;
    :cond_b
    :try_start_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/impl/client/RequestWrapper;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 346
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/http/impl/client/RequestWrapper;

    move-object/from16 v28, v0

    new-instance v29, Ljava/net/URI;

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    goto/16 :goto_1

    .line 356
    .end local v12    # "locationHeader":Lorg/apache/http/Header;
    :cond_c
    const/16 v28, 0x1f4

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_d

    const/16 v28, 0x1f7

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 358
    :cond_d
    const/4 v4, 0x0

    .line 359
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->sleepOnInternalError(I)V

    .line 364
    :cond_e
    :goto_5
    const-string v5, ""

    .line 365
    .local v5, "contentType":Ljava/lang/String;
    const-string v28, "Content-Type"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    if-eqz v28, :cond_f

    .line 366
    const-string v28, "Content-Type"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 369
    :cond_f
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_10

    .line 370
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Response for \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\'. Content-Type: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", Headers: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 373
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Response entity: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 374
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    if-eqz v28, :cond_10

    .line 375
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Entity length: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 380
    :cond_10
    const/4 v6, 0x0

    .line 381
    .local v6, "didReceiveExpectedResponseCode":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v9, v0, :cond_13

    if-nez v6, :cond_13

    .line 382
    aget v28, p2, v9

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 383
    const/4 v6, 0x1

    .line 381
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 361
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "didReceiveExpectedResponseCode":Z
    .end local v9    # "i":I
    :cond_12
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 386
    .restart local v5    # "contentType":Ljava/lang/String;
    .restart local v6    # "didReceiveExpectedResponseCode":Z
    .restart local v9    # "i":I
    :cond_13
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_14

    .line 387
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received expected response code: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 388
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  expected code(s): "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 391
    :cond_14
    if-nez v6, :cond_1d

    .line 392
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 393
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Response xml: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->isXmlContentType(Ljava/lang/String;)Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 394
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Response entity: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 395
    sget-object v29, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Response entity length: "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    if-nez v28, :cond_18

    const-string v28, "??"

    :goto_7
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 400
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->isXmlContentType(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_29

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    if-eqz v28, :cond_29

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_29

    .line 404
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_16

    .line 405
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Response \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\' - Received error response with XML message"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 409
    :cond_16
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 410
    .local v24, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 412
    .local v14, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v28, Ljava/io/InputStreamReader;

    new-instance v29, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-direct/range {v28 .. v29}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 414
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .local v15, "reader":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 415
    .local v11, "line":Ljava/lang/String;
    :goto_8
    :try_start_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_19

    .line 416
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    .line 419
    :catchall_0
    move-exception v28

    move-object v14, v15

    .end local v11    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :goto_9
    if-eqz v14, :cond_17

    .line 420
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 419
    :cond_17
    throw v28

    .line 395
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    :cond_18
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v31

    move-object/from16 v0, v28

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_7

    .line 419
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v24    # "sb":Ljava/lang/StringBuilder;
    :cond_19
    if-eqz v15, :cond_1a

    .line 420
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 424
    :cond_1a
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 427
    new-instance v7, Lorg/jets3t/service/ServiceException;

    const-string v28, "S3 Error Message."

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v7, v0, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .local v7, "exception":Lorg/jets3t/service/ServiceException;
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/jets3t/service/ServiceException;->setResponseCode(I)V

    .line 431
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/jets3t/service/utils/RestUtils;->convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lorg/jets3t/service/ServiceException;->setResponseHeaders(Ljava/util/Map;)V

    .line 434
    const-string v28, "RequestTimeout"

    invoke-virtual {v7}, Lorg/jets3t/service/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    move-object/from16 v28, v0

    const-string v29, "httpclient.retry-max"

    const/16 v30, 0x5

    invoke-virtual/range {v28 .. v30}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v23

    .line 437
    .local v23, "retryMaxCount":I
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_1e

    .line 438
    add-int/lit8 v18, v18, 0x1

    .line 439
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 440
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Retrying connection that failed with RequestTimeout error, attempt number "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " of "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 444
    :cond_1b
    const/4 v4, 0x0

    .line 535
    .end local v7    # "exception":Lorg/jets3t/service/ServiceException;
    .end local v11    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v23    # "retryMaxCount":I
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    :cond_1c
    :goto_a
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 536
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " \'"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_2e

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_2e

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "?"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    :goto_b
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\'"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " -- ResponseCode: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", ResponseStatus: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", Request Headers: ["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v29

    const-string v30, ", "

    invoke-static/range {v29 .. v30}, Lorg/jets3t/service/utils/ServiceUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", Response Headers: ["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v29

    const-string v30, ", "

    invoke-static/range {v29 .. v30}, Lorg/jets3t/service/utils/ServiceUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 547
    .local v17, "requestDescription":Ljava/lang/String;
    const-string v28, "[\\n\\r\\f]"

    const-string v29, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 548
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error Response: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 551
    .end local v17    # "requestDescription":Ljava/lang/String;
    :cond_1d
    if-eqz v4, :cond_1

    .line 608
    return-object v19

    .line 446
    .restart local v7    # "exception":Lorg/jets3t/service/ServiceException;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "retryMaxCount":I
    .restart local v24    # "sb":Ljava/lang/StringBuilder;
    :cond_1e
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 447
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exceeded maximum number of retries for RequestTimeout errors: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 450
    :cond_1f
    throw v7

    .line 452
    .end local v23    # "retryMaxCount":I
    :cond_20
    const-string v28, "RequestTimeTooSkewed"

    invoke-virtual {v7}, Lorg/jets3t/service/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 453
    invoke-static {}, Lorg/jets3t/service/utils/RestUtils;->getAWSTimeAdjustment()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->timeOffset:J

    .line 454
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v28

    if-eqz v28, :cond_21

    .line 455
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Adjusted time offset in response to RequestTimeTooSkewed error. Local machine and S3 server disagree on the time by approximately "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->timeOffset:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " seconds. Retrying connection."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 459
    :cond_21
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 460
    :cond_22
    const/16 v28, 0x1f4

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c

    const/16 v28, 0x1f7

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c

    .line 462
    const/16 v28, 0x133

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_23

    .line 464
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 465
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Following Temporary Redirect to: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 470
    :cond_23
    const/16 v28, 0x194

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_25

    const-string v28, "PUT"

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_25

    const-string v28, "NoSuchKey"

    invoke-virtual {v7}, Lorg/jets3t/service/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_25

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "copy-source"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    if-nez v28, :cond_25

    .line 477
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_24

    .line 478
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Ignoring NoSuchKey/404 error on PUT to: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 480
    :cond_24
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 483
    :cond_25
    const/16 v28, 0x193

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_26

    const/16 v28, 0x191

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_28

    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->isRecoverable403(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/Exception;)Z

    move-result v28

    if-eqz v28, :cond_28

    .line 484
    const/4 v4, 0x0

    .line 485
    add-int/lit8 v3, v3, 0x1

    .line 487
    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v3, v0, :cond_27

    .line 488
    new-instance v28, Lorg/jets3t/service/ServiceException;

    const-string v29, "Exceeded 403 retry limit (1)."

    invoke-direct/range {v28 .. v29}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 491
    :cond_27
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 492
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v29, "Retrying after 403 Forbidden"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 497
    :cond_28
    throw v7

    .line 501
    .end local v7    # "exception":Lorg/jets3t/service/ServiceException;
    .end local v11    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    :cond_29
    const/16 v22, 0x0

    .line 502
    .local v22, "responseText":Ljava/lang/String;
    const/16 v20, 0x0

    .line 503
    .local v20, "responseBody":[B
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    if-eqz v28, :cond_2a

    .line 504
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v20

    .line 506
    :cond_2a
    if-eqz v20, :cond_2b

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_2b

    .line 507
    new-instance v22, Ljava/lang/String;

    .end local v22    # "responseText":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 510
    .restart local v22    # "responseText":Ljava/lang/String;
    :cond_2b
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_2c

    .line 511
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v29, "Releasing error response without XML content"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 513
    :cond_2c
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 515
    const/16 v28, 0x1f4

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c

    const/16 v28, 0x1f7

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c

    .line 519
    new-instance v8, Lorg/jets3t/service/impl/rest/HttpException;

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v28

    move/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v8, v0, v1}, Lorg/jets3t/service/impl/rest/HttpException;-><init>(ILjava/lang/String;)V

    .line 522
    .local v8, "httpException":Lorg/jets3t/service/impl/rest/HttpException;
    new-instance v7, Lorg/jets3t/service/ServiceException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Request Error"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    if-eqz v22, :cond_2d

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ["

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "]."

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    :goto_c
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v7, v0, v8}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    .restart local v7    # "exception":Lorg/jets3t/service/ServiceException;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/jets3t/service/utils/RestUtils;->convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lorg/jets3t/service/ServiceException;->setResponseHeaders(Ljava/util/Map;)V

    .line 529
    throw v7

    .line 522
    .end local v7    # "exception":Lorg/jets3t/service/ServiceException;
    :cond_2d
    const-string v28, "."

    goto :goto_c

    .line 536
    .end local v8    # "httpException":Lorg/jets3t/service/impl/rest/HttpException;
    .end local v20    # "responseBody":[B
    .end local v22    # "responseText":Ljava/lang/String;
    :cond_2e
    const-string v28, ""
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_b

    .line 561
    .end local v3    # "authFailureCount":I
    .end local v4    # "completedWithoutRecoverableError":Z
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "didReceiveExpectedResponseCode":Z
    .end local v9    # "i":I
    .end local v10    # "internalErrorCount":I
    .end local v16    # "redirectCount":I
    .end local v18    # "requestTimeoutErrorCount":I
    .end local v21    # "responseCode":I
    .end local v27    # "wasRecentlyRedirected":Z
    .restart local v13    # "msg":Ljava/lang/String;
    .restart local v26    # "t":Ljava/lang/Throwable;
    :cond_2f
    sget-object v28, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 573
    .end local v13    # "msg":Ljava/lang/String;
    :cond_30
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/jets3t/service/mx/MxDelegate;->registerS3ServiceExceptionEvent()V

    .line 574
    new-instance v25, Lorg/jets3t/service/ServiceException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Request Error: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v25    # "serviceException":Lorg/jets3t/service/ServiceException;
    goto/16 :goto_3

    .line 594
    :catch_1
    move-exception v28

    goto/16 :goto_4

    .line 419
    .end local v25    # "serviceException":Lorg/jets3t/service/ServiceException;
    .end local v26    # "t":Ljava/lang/Throwable;
    .restart local v3    # "authFailureCount":I
    .restart local v4    # "completedWithoutRecoverableError":Z
    .restart local v5    # "contentType":Ljava/lang/String;
    .restart local v6    # "didReceiveExpectedResponseCode":Z
    .restart local v9    # "i":I
    .restart local v10    # "internalErrorCount":I
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "redirectCount":I
    .restart local v18    # "requestTimeoutErrorCount":I
    .restart local v21    # "responseCode":I
    .restart local v24    # "sb":Ljava/lang/StringBuilder;
    .restart local v27    # "wasRecentlyRedirected":Z
    :catchall_1
    move-exception v28

    goto/16 :goto_9
.end method

.method protected performRestDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p4, "multiFactorSerialNumber"    # Ljava/lang/String;
    .param p5, "multiFactorAuthCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1126
    .local p3, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->DELETE:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->setupConnection(Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 1133
    .local v0, "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    if-nez p4, :cond_0

    if-eqz p5, :cond_1

    .line 1134
    :cond_0
    const-string v2, "x-amz-mfa"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, v0, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1141
    .local v1, "result":Lorg/apache/http/HttpResponse;
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1142
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Releasing HttpMethod after delete"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1144
    :cond_2
    invoke-direct {p0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 1146
    return-object v1

    .line 1138
    nop

    :array_0
    .array-data 4
        0xcc
        0xc8
    .end array-data
.end method

.method protected performRestGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 4
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
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 966
    .local p3, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->GET:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->setupConnection(Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 973
    .local v1, "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {p0, v1, p4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->addRequestHeadersToConnection(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 975
    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0xc8

    aput v3, v0, v2

    .line 976
    .local v0, "expectedStatusCodes":[I
    if-eqz p4, :cond_0

    const-string v2, "Range"

    invoke-interface {p4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 979
    const/4 v2, 0x2

    new-array v0, v2, [I

    .end local v0    # "expectedStatusCodes":[I
    fill-array-data v0, :array_0

    .line 981
    .restart local v0    # "expectedStatusCodes":[I
    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2

    .line 979
    :array_0
    .array-data 4
        0xce
        0xc8
    .end array-data
.end method

.method protected performRestHead(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 4
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
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 933
    .local p3, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->HEAD:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->setupConnection(Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 940
    .local v0, "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {p0, v0, p4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->addRequestHeadersToConnection(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 942
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xc8

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method protected performRestPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p5, "requestEntity"    # Lorg/apache/http/HttpEntity;
    .param p6, "autoRelease"    # Z
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpEntity;",
            "Z)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1087
    .local p3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->POST:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-virtual {p0, v3, p1, p2, p4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->setupConnection(Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 1093
    .local v0, "postMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {p0, p3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->renameMetadataKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1094
    .local v1, "renamedMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->addMetadataToHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 1096
    if-eqz p5, :cond_0

    move-object v3, v0

    .line 1097
    check-cast v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3, p5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1100
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xc8

    aput v5, v3, v4

    invoke-virtual {p0, v0, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1102
    .local v2, "result":Lorg/apache/http/HttpResponse;
    if-eqz p6, :cond_1

    .line 1103
    invoke-direct {p0, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 1106
    :cond_1
    return-object v2
.end method

.method protected performRestPostWithXmlBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/jamesmurty/utils/XMLBuilder;)Lorg/apache/http/HttpResponse;
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p5, "builder"    # Lcom/jamesmurty/utils/XMLBuilder;
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/jamesmurty/utils/XMLBuilder;",
            ")",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1177
    .local p3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 1178
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .end local p3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v8, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object p3, v8

    .line 1180
    .end local v8    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v0, "content-type"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1181
    const-string v0, "Content-Type"

    const-string v1, "text/plain"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcom/jamesmurty/utils/XMLBuilder;->asString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v9

    .line 1184
    .local v9, "xml":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v0, "text/plain"

    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, v9, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1186
    .end local v9    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1187
    .local v7, "e":Ljava/lang/Exception;
    instance-of v0, v7, Lorg/jets3t/service/ServiceException;

    if-eqz v0, :cond_2

    .line 1188
    check-cast v7, Lorg/jets3t/service/ServiceException;

    .end local v7    # "e":Ljava/lang/Exception;
    throw v7

    .line 1190
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Lorg/jets3t/service/ServiceException;

    const-string v1, "Failed to POST request containing an XML document"

    invoke-direct {v0, v1, v7}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected performRestPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p5, "requestEntity"    # Lorg/apache/http/HttpEntity;
    .param p6, "autoRelease"    # Z
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpEntity;",
            "Z)",
            "Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1014
    .local p3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->PUT:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-virtual {p0, v5, p1, p2, p4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->setupConnection(Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 1020
    .local v2, "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {p0, p3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->renameMetadataKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 1021
    .local v3, "renamedMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, v2, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->addMetadataToHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 1023
    const-wide/16 v0, 0x0

    .line 1025
    .local v0, "contentLength":J
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1026
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Put request with entity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1028
    :cond_0
    if-eqz p5, :cond_1

    move-object v5, v2

    .line 1029
    check-cast v5, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {v5, p5}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1036
    invoke-interface {p5}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, "Content-Type"

    invoke-interface {v2, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1039
    invoke-interface {p5}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 1043
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {p0, v2, v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[I)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 1045
    .local v4, "result":Lorg/apache/http/HttpResponse;
    if-eqz p5, :cond_2

    .line 1047
    check-cast v2, Lorg/apache/http/client/methods/HttpPut;

    .end local v2    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPut;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 1050
    :cond_2
    if-eqz p6, :cond_3

    .line 1051
    invoke-direct {p0, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 1054
    :cond_3
    new-instance v5, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;

    invoke-direct {v5, v4, v0, v1}, Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;-><init>(Lorg/apache/http/HttpResponse;J)V

    return-object v5

    .line 1043
    nop

    :array_0
    .array-data 4
        0xc8
        0xcc
    .end array-data
.end method

.method protected performRestPutWithXmlBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/jamesmurty/utils/XMLBuilder;)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p5, "builder"    # Lcom/jamesmurty/utils/XMLBuilder;
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/jamesmurty/utils/XMLBuilder;",
            ")",
            "Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1154
    .local p3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 1155
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .end local p3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v8, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object p3, v8

    .line 1157
    .end local v8    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v0, "content-type"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    const-string v0, "Content-Type"

    const-string v1, "text/plain"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcom/jamesmurty/utils/XMLBuilder;->asString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v9

    .line 1161
    .local v9, "xml":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v0, "text/plain"

    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, v9, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1163
    .end local v9    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1164
    .local v7, "e":Ljava/lang/Exception;
    instance-of v0, v7, Lorg/jets3t/service/ServiceException;

    if-eqz v0, :cond_2

    .line 1165
    check-cast v7, Lorg/jets3t/service/ServiceException;

    .end local v7    # "e":Ljava/lang/Exception;
    throw v7

    .line 1167
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Lorg/jets3t/service/ServiceException;

    const-string v1, "Failed to PUT request containing an XML document"

    invoke-direct {v0, v1, v7}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected prepareRESTHeaderAcl(Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;)Z
    .locals 3
    .param p2, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jets3t/service/acl/AccessControlList;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1896
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 1897
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null metadata not allowed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1899
    :cond_0
    if-eqz p2, :cond_1

    .line 1900
    invoke-virtual {p2}, Lorg/jets3t/service/acl/AccessControlList;->getValueForRESTHeaderACL()Ljava/lang/String;

    move-result-object v0

    .line 1901
    .local v0, "restHeaderAclValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "acl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    .end local v0    # "restHeaderAclValue":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1904
    .restart local v0    # "restHeaderAclValue":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected prepareServerSideEncryption(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "serverSideEncryptionAlgorithm"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1937
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 1938
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null metadata not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1940
    :cond_0
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getEnableServerSideEncryption()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1957
    :cond_1
    :goto_0
    return-void

    .line 1944
    :cond_2
    if-nez p2, :cond_3

    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->defaultServerSideEncryptionAlgorithm:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1948
    iget-object p2, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->defaultServerSideEncryptionAlgorithm:Ljava/lang/String;

    .line 1949
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applied default server-side encryption algorithm \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to object \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1953
    :cond_3
    if-eqz p2, :cond_1

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "server-side-encryption"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected prepareStorageClass(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p2, "storageClass"    # Ljava/lang/String;
    .param p3, "useDefaultStorageClass"    # Z
    .param p4, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1913
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 1914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null metadata not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1916
    :cond_0
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getEnableStorageClasses()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1917
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->defaultStorageClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1922
    iget-object p2, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->defaultStorageClass:Ljava/lang/String;

    .line 1923
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applied default storage class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to object \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1926
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    if-eq p2, v0, :cond_2

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "storage-class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    :cond_2
    return-void
.end method

.method protected putAclImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)V
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .param p4, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1604
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Access Control List for bucketName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", objectKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1608
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1609
    .local v4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "acl"

    const-string v1, ""

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    if-eqz p4, :cond_1

    .line 1611
    const-string v0, "versionId"

    invoke-interface {v4, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1615
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Content-Type"

    const-string v1, "text/plain"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    :try_start_0
    invoke-virtual {p3}, Lorg/jets3t/service/acl/AccessControlList;->toXml()Ljava/lang/String;

    move-result-object v7

    .line 1619
    .local v7, "aclAsXml":Ljava/lang/String;
    const-string v0, "Content-Length"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v0, "text/plain"

    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, v7, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    return-void

    .line 1623
    .end local v7    # "aclAsXml":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1624
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lorg/jets3t/service/ServiceException;

    const-string v1, "Unable to encode ACL XML document"

    invoke-direct {v0, v1, v8}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected putBucketAclImpl(Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1597
    move-object v0, p1

    .line 1598
    .local v0, "fullKey":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, p2, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->putAclImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)V

    .line 1599
    return-void
.end method

.method protected putObjectAclImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .param p4, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1590
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->putAclImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)V

    .line 1591
    return-void
.end method

.method public putObjectAclWithSignedUrl(Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V
    .locals 8
    .param p1, "signedAclUrl"    # Ljava/lang/String;
    .param p2, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 2365
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 2367
    .local v3, "putMethod":Lorg/apache/http/client/methods/HttpPut;
    if-eqz p2, :cond_0

    .line 2368
    invoke-virtual {p2}, Lorg/jets3t/service/acl/AccessControlList;->getValueForRESTHeaderACL()Ljava/lang/String;

    move-result-object v4

    .line 2369
    .local v4, "restHeaderAclValue":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "acl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    .end local v4    # "restHeaderAclValue":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xc8

    aput v7, v5, v6

    invoke-virtual {p0, v3, v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 2386
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 2387
    return-void

    .line 2373
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v4    # "restHeaderAclValue":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lorg/jets3t/service/acl/AccessControlList;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 2374
    .local v0, "aclAsXml":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v6, "text/xml"

    sget-object v7, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, v0, v6, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2376
    .end local v0    # "aclAsXml":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2377
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lorg/jets3t/service/ServiceException;

    const-string v6, "Unable to encode ACL XML document"

    invoke-direct {v5, v6, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected putObjectImpl(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)Lorg/jets3t/service/model/StorageObject;
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1749
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1750
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating Object with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in bucket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1753
    :cond_0
    const/4 v0, 0x0

    .line 1755
    .local v0, "requestEntity":Lorg/apache/http/HttpEntity;
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1756
    const-string v1, "Content-Length"

    invoke-virtual {p2, v1}, Lorg/jets3t/service/model/StorageObject;->containsMetadata(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1757
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1758
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploading object data with Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1760
    :cond_1
    new-instance v0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;

    .end local v0    # "requestEntity":Lorg/apache/http/HttpEntity;
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v4

    iget-object v6, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-virtual {p0, p2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->isLiveMD5HashingRequired(Lorg/jets3t/service/model/StorageObject;)Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;JLorg/jets3t/service/Jets3tProperties;Z)V

    .line 1782
    .restart local v0    # "requestEntity":Lorg/apache/http/HttpEntity;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->putObjectWithRequestEntityImpl(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Lorg/apache/http/HttpEntity;Ljava/util/Map;)V

    .line 1784
    return-object p2

    .line 1770
    :cond_3
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1771
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Content-Length of data stream not set, will automatically determine data length in memory"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1773
    :cond_4
    new-instance v8, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v8}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 1774
    .local v8, "basicHttpEntity":Lorg/apache/http/entity/BasicHttpEntity;
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 1776
    :try_start_0
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    .end local v0    # "requestEntity":Lorg/apache/http/HttpEntity;
    invoke-direct {v0, v8}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "requestEntity":Lorg/apache/http/HttpEntity;
    goto :goto_0

    .line 1777
    .end local v0    # "requestEntity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v9

    .line 1778
    .local v9, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/jets3t/service/ServiceException;

    const-string v2, "Unable to read data stream of unknown length"

    invoke-direct {v1, v2, v9}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected putObjectWithRequestEntityImpl(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Lorg/apache/http/HttpEntity;Ljava/util/Map;)V
    .locals 15
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/StorageObject;
    .param p3, "requestEntity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1791
    .local p4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getMetadataMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getStorageClass()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getServerSideEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v10}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->createObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/Map;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    .line 1797
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->closeDataInputStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1805
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jets3t/service/model/StorageObject;->replaceAllMetadata(Ljava/util/Map;)V

    .line 1813
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->isLiveMD5HashingRequired(Lorg/jets3t/service/model/StorageObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p3

    instance-of v1, v0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;

    if-eqz v1, :cond_3

    const/4 v14, 0x1

    .line 1815
    .local v14, "md5Verify":Z
    :goto_1
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1816
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v14, :cond_4

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "verify expected and actual e-tag values."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1819
    :cond_1
    if-eqz v14, :cond_2

    .line 1821
    check-cast p3, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;

    .end local p3    # "requestEntity":Lorg/apache/http/HttpEntity;
    invoke-virtual/range {p3 .. p3}, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->getMD5DigestOfData()[B

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/utils/ServiceUtils;->toHex([B)Ljava/lang/String;

    move-result-object v12

    .line 1823
    .local v12, "hexMD5OfUploadedData":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->verifyExpectedAndActualETagValues(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)V

    .line 1825
    .end local v12    # "hexMD5OfUploadedData":Ljava/lang/String;
    :cond_2
    return-void

    .line 1798
    .end local v14    # "md5Verify":Z
    .restart local p3    # "requestEntity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v11

    .line 1799
    .local v11, "e":Ljava/io/IOException;
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1800
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to close data input stream for object \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1813
    .end local v11    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 1816
    .restart local v14    # "md5Verify":Z
    :cond_4
    const-string v1, "NOT "

    goto :goto_2
.end method

.method public putObjectWithSignedUrl(Ljava/lang/String;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/S3Object;
    .locals 18
    .param p1, "signedPutUrl"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 2200
    new-instance v14, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 2202
    .local v14, "putMethod":Lorg/apache/http/client/methods/HttpPut;
    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/S3Object;->getMetadataMap()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->renameMetadataKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    .line 2203
    .local v15, "renamedMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->addMetadataToHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 2205
    const-string v3, "Content-Length"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/jets3t/service/model/S3Object;->containsMetadata(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2206
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Content-Length must be specified for objects put using signed PUT URLs"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2209
    :cond_0
    const/4 v2, 0x0

    .line 2213
    .local v2, "repeatableRequestEntity":Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->isLiveMD5HashingRequired(Lorg/jets3t/service/model/StorageObject;)Z

    move-result v9

    .line 2215
    .local v9, "isLiveMD5HashingRequired":Z
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v16

    .line 2217
    .local v16, "s3Endpoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/S3Object;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2218
    new-instance v2, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;

    .end local v2    # "repeatableRequestEntity":Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;
    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/S3Object;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/S3Object;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/S3Object;->getContentLength()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    invoke-direct/range {v2 .. v9}, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;JLorg/jets3t/service/Jets3tProperties;Z)V

    .line 2222
    .restart local v2    # "repeatableRequestEntity":Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;
    invoke-virtual {v14, v2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2225
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xc8

    aput v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRequest(Lorg/apache/http/client/methods/HttpUriRequest;[I)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 2228
    .local v12, "httpResponse":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->releaseConnection(Lorg/apache/http/HttpResponse;)V

    .line 2230
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/S3Object;->closeDataInputStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2238
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v14}, Lorg/apache/http/client/methods/HttpPut;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lorg/apache/http/client/methods/HttpPut;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Lorg/jets3t/service/utils/ServiceUtils;->buildObjectFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v17

    .line 2242
    .local v17, "uploadedObject":Lorg/jets3t/service/model/StorageObject;
    invoke-virtual/range {v17 .. v17}, Lorg/jets3t/service/model/StorageObject;->getBucketName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/jets3t/service/model/StorageObject;->setBucketName(Ljava/lang/String;)V

    .line 2245
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2246
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2247
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getRestMetadataPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v3, v4}, Lorg/jets3t/service/utils/ServiceUtils;->cleanRestMetadataMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/jets3t/service/model/StorageObject;->replaceAllMetadata(Ljava/util/Map;)V

    .line 2256
    if-eqz v2, :cond_3

    if-eqz v9, :cond_3

    .line 2258
    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->getMD5DigestOfData()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jets3t/service/utils/ServiceUtils;->toHex([B)Ljava/lang/String;

    move-result-object v11

    .line 2260
    .local v11, "hexMD5OfUploadedData":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->verifyExpectedAndActualETagValues(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)V

    .line 2263
    .end local v11    # "hexMD5OfUploadedData":Ljava/lang/String;
    :cond_3
    check-cast v17, Lorg/jets3t/service/model/S3Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v17    # "uploadedObject":Lorg/jets3t/service/model/StorageObject;
    return-object v17

    .line 2231
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v10

    .line 2232
    .local v10, "e":Ljava/io/IOException;
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2233
    sget-object v3, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to close data input stream for object \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/jets3t/service/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v10}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2264
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 2265
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lorg/jets3t/service/ServiceException;

    const-string v4, "Unable to determine name of object created with signed PUT"

    invoke-direct {v3, v4, v10}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected setBucketLoggingStatusImpl(Ljava/lang/String;Lorg/jets3t/service/model/StorageBucketLoggingStatus;)V
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "status"    # Lorg/jets3t/service/model/StorageBucketLoggingStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1715
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Logging Status for bucket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1719
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1720
    .local v4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "logging"

    const-string v1, ""

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1723
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Content-Type"

    const-string v1, "text/plain"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    const/4 v9, 0x0

    .line 1727
    .local v9, "statusAsXml":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->toXml()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1732
    const/4 v2, 0x0

    :try_start_1
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v0, "text/plain"

    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v5, v9, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->performRestPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;Z)Lorg/jets3t/service/impl/rest/httpclient/HttpResponseAndByteCount;
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1740
    return-void

    .line 1728
    :catch_0
    move-exception v7

    .line 1729
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/jets3t/service/ServiceException;

    const-string v1, "Unable to generate LoggingStatus XML document"

    invoke-direct {v0, v1, v7}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1735
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 1736
    .local v8, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/ServiceException;

    invoke-direct {v0, v8}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1737
    .end local v8    # "se":Lorg/jets3t/service/ServiceException;
    :catch_2
    move-exception v7

    .line 1738
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lorg/jets3t/service/ServiceException;

    const-string v1, "Unable to encode LoggingStatus XML document"

    invoke-direct {v0, v1, v7}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V
    .locals 0
    .param p1, "credentialsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    .prologue
    .line 261
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    .line 262
    return-void
.end method

.method public setHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 242
    return-void
.end method

.method protected setupConnection(Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 13
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
    .line 1212
    .local p4, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 1213
    new-instance v10, Lorg/jets3t/service/ServiceException;

    const-string v11, "Cannot connect to S3 Service with a null path"

    invoke-direct {v10, v11}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1216
    :cond_0
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getDisableDnsBuckets()Z

    move-result v1

    .line 1217
    .local v1, "disableDnsBuckets":Z
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    .line 1218
    .local v2, "endPoint":Ljava/lang/String;
    invoke-static {p2, v1, v2}, Lorg/jets3t/service/utils/ServiceUtils;->generateS3HostnameForBucket(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1222
    .local v3, "hostname":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getVirtualPath()Ljava/lang/String;

    move-result-object v9

    .line 1225
    .local v9, "virtualPath":Ljava/lang/String;
    const-string v6, "/"

    .line 1226
    .local v6, "resourceString":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 1227
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1229
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p3, :cond_4

    invoke-static/range {p3 .. p3}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1232
    const/4 v8, 0x0

    .line 1233
    .local v8, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->isHttpsOnly()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1234
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getHttpsPort()I

    move-result v7

    .line 1235
    .local v7, "securePort":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1240
    .end local v7    # "securePort":I
    :goto_1
    sget-object v10, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1241
    sget-object v10, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "S3 URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1245
    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {p0, v8, v0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->addRequestParametersToUrlPath(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 1247
    const/4 v4, 0x0

    .line 1248
    .local v4, "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    sget-object v10, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->PUT:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-virtual {v10, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1249
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    .end local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 1263
    .restart local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_2
    const-string v10, "Date"

    invoke-interface {v4, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    if-nez v10, :cond_3

    .line 1264
    const-string v10, "Date"

    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getCurrentTimeWithOffset()Ljava/util/Date;

    move-result-object v11

    invoke-static {v11}, Lorg/jets3t/service/utils/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :cond_3
    return-object v4

    .line 1229
    .end local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v8    # "url":Ljava/lang/String;
    :cond_4
    const-string v10, ""

    goto/16 :goto_0

    .line 1237
    .restart local v8    # "url":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getHttpPort()I

    move-result v5

    .line 1238
    .local v5, "insecurePort":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1250
    .end local v5    # "insecurePort":I
    .restart local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_6
    sget-object v10, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->POST:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-virtual {v10, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1251
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    .end local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_2

    .line 1252
    :cond_7
    sget-object v10, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->HEAD:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-virtual {v10, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1253
    new-instance v4, Lorg/apache/http/client/methods/HttpHead;

    .end local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .restart local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_2

    .line 1254
    :cond_8
    sget-object v10, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->GET:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-virtual {v10, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1255
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    .end local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_2

    .line 1256
    :cond_9
    sget-object v10, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->DELETE:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-virtual {v10, p1}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1257
    new-instance v4, Lorg/apache/http/client/methods/HttpDelete;

    .end local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v4    # "httpMethod":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_2

    .line 1259
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unrecognised HTTP method name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method protected shutdownImpl()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->shuttingDown:Z

    .line 193
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->getHttpConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 194
    .local v0, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 195
    return-void
.end method

.method protected verifyExpectedAndActualETagValues(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)V
    .locals 3
    .param p1, "expectedETag"    # Ljava/lang/String;
    .param p2, "uploadedObject"    # Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 893
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ETag header value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' returned for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid hex-encoded MD5 hash value;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot verify the correctness of the uploaded data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 901
    new-instance v0, Lorg/jets3t/service/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatch between MD5 hash of uploaded data ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and ETag returned by S3 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for object key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_2
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object upload was automatically verified, the calculated MD5 hash value matched the ETag returned by S3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0
.end method
