.class public Lorg/jets3t/service/utils/RestUtils;
.super Ljava/lang/Object;
.source "RestUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/utils/RestUtils$1;,
        Lorg/jets3t/service/utils/RestUtils$PreemptiveInterceptor;,
        Lorg/jets3t/service/utils/RestUtils$JetS3tRetryHandler;,
        Lorg/jets3t/service/utils/RestUtils$ThreadSafeConnManager;,
        Lorg/jets3t/service/utils/RestUtils$ConnManagerFactory;
    }
.end annotation


# static fields
.field public static final HTTP_HEADER_METADATA_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const-class v0, Lorg/jets3t/service/utils/RestUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    .line 113
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "content-type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content-md5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content-length"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content-language"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cache-control"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "content-disposition"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "content-encoding"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/utils/RestUtils;->HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    return-void
.end method

.method static synthetic access$100()Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method public static convertHeadersToMap([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 7
    .param p0, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 561
    .local v4, "s3Headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 562
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_0
    return-object v4
.end method

.method public static createDefaultHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 5

    .prologue
    .line 574
    new-instance v0, Lorg/apache/http/params/SyncBasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/SyncBasicHttpParams;-><init>()V

    .line 575
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 576
    const-string v3, "ISO-8859-1"

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 578
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 579
    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 582
    const-string v3, "org.apache.http.client"

    const-class v4, Lorg/apache/http/client/HttpClient;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/http/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;

    move-result-object v2

    .line 584
    .local v2, "vi":Lorg/apache/http/util/VersionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/http/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "release":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Apache-HttpClient/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (java 1.5)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 590
    return-object v0

    .line 584
    .end local v1    # "release":Ljava/lang/String;
    :cond_0
    const-string v1, "UNAVAILABLE"

    goto :goto_0
.end method

.method public static encodeUrlPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 160
    aget-object v3, v2, v0

    invoke-static {v3}, Lorg/jets3t/service/utils/RestUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static encodeUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    sget-object v2, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "encodedPath":Ljava/lang/String;
    const-string v2, "\\+"

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v2, "%40"

    const-string v3, "@"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    return-object v0

    .line 141
    .end local v0    # "encodedPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/jets3t/service/ServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to encode path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getAWSTimeAdjustment()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jets3t/service/S3ServiceException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 527
    new-instance v5, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;-><init>(Lorg/jets3t/service/security/ProviderCredentials;)V

    .line 528
    .local v5, "restService":Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;
    invoke-virtual {v5}, Lorg/jets3t/service/impl/rest/httpclient/RestS3Service;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 529
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    const-wide/16 v7, 0x0

    .line 532
    .local v7, "timeOffset":J
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    const-string v9, "http://aws.amazon.com/"

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 533
    .local v3, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 535
    .local v6, "result":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_1

    .line 536
    const-string v9, "Date"

    invoke-interface {v6, v9}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v2, v9, v10

    .line 538
    .local v2, "dateHeader":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jets3t/service/utils/ServiceUtils;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 542
    .local v0, "awsTime":Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 543
    .local v4, "localTime":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long v7, v9, v11

    .line 545
    sget-object v9, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 546
    sget-object v9, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calculated time offset value of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " milliseconds between the local machine and an AWS server"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 556
    .end local v0    # "awsTime":Ljava/util/Date;
    .end local v2    # "dateHeader":Lorg/apache/http/Header;
    .end local v4    # "localTime":Ljava/util/Date;
    :cond_0
    :goto_0
    return-wide v7

    .line 550
    :cond_1
    sget-object v9, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 551
    sget-object v9, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v10, "Unable to calculate value of time offset between the local machine and AWS server"

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static initHttpConnection(Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;Lorg/jets3t/service/Jets3tProperties;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;)Lorg/apache/http/client/HttpClient;
    .locals 9
    .param p0, "requestAuthorizer"    # Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;
    .param p1, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;
    .param p2, "userAgentDescription"    # Ljava/lang/String;
    .param p3, "credentialsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    .prologue
    .line 298
    invoke-static {}, Lorg/jets3t/service/utils/RestUtils;->createDefaultHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    .line 299
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    const-string v6, "org.jets3t.service.JetS3tProperties"

    invoke-interface {v4, v6, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 301
    const-string v6, "http.connection-manager.factory-class-name"

    const-string v7, "http.connection-manager.factory-class-name"

    const-class v8, Lorg/jets3t/service/utils/RestUtils$ConnManagerFactory;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 307
    const-string v6, "httpclient.connection-timeout-ms"

    const v7, 0xea60

    invoke-virtual {p1, v6, v7}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 309
    const-string v6, "httpclient.socket-timeout-ms"

    const v7, 0xea60

    invoke-virtual {p1, v6, v7}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 311
    const-string v6, "httpclient.stale-checking-enabled"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 315
    const-string v6, "httpclient.socket-receive-buffer"

    invoke-virtual {p1, v6}, Lorg/jets3t/service/Jets3tProperties;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 316
    const-string v6, "httpclient.socket-receive-buffer"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 320
    :cond_0
    const/4 v6, 0x1

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 323
    const-string v6, "httpclient.useragent"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "userAgent":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 325
    invoke-static {p2}, Lorg/jets3t/service/utils/ServiceUtils;->getUserAgentDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 327
    :cond_1
    sget-object v6, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 328
    sget-object v6, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting user agent string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 330
    :cond_2
    invoke-static {v4, v5}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 332
    const-string v6, "http.protocol.expect-continue"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v2

    .line 334
    .local v2, "expectContinue":Z
    invoke-static {v4, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 336
    const-string v6, "httpclient.connection-manager-timeout"

    const-wide/16 v7, 0x0

    invoke-virtual {p1, v6, v7, v8}, Lorg/jets3t/service/Jets3tProperties;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    .line 338
    .local v0, "connectionManagerTimeout":J
    invoke-static {v4, v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 340
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 341
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v6, Lorg/jets3t/service/utils/RestUtils$JetS3tRetryHandler;

    const-string v7, "httpclient.retry-max"

    const/4 v8, 0x5

    invoke-virtual {p1, v7, v8}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v6, v7, p0}, Lorg/jets3t/service/utils/RestUtils$JetS3tRetryHandler;-><init>(ILorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 345
    if-eqz p3, :cond_4

    .line 346
    sget-object v6, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 347
    sget-object v6, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using credentials provider class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 350
    :cond_3
    invoke-virtual {v3, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V

    .line 351
    const-string v6, "httpclient.authentication-preemptive"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 355
    new-instance v6, Lorg/jets3t/service/utils/RestUtils$PreemptiveInterceptor;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lorg/jets3t/service/utils/RestUtils$PreemptiveInterceptor;-><init>(Lorg/jets3t/service/utils/RestUtils$1;)V

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    .line 359
    :cond_4
    return-object v3
.end method

.method public static initHttpProxy(Lorg/apache/http/client/HttpClient;Ljava/lang/String;ILorg/jets3t/service/Jets3tProperties;)V
    .locals 8
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "proxyHostAddress"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;

    .prologue
    const/4 v5, 0x0

    .line 385
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p1

    move v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v0 .. v7}, Lorg/jets3t/service/utils/RestUtils;->initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public static initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;)V
    .locals 8
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;

    .prologue
    const/4 v3, 0x0

    .line 366
    const/4 v2, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lorg/jets3t/service/utils/RestUtils;->initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public static initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;Ljava/lang/String;)V
    .locals 9
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;
    .param p2, "endpoint"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 374
    const/4 v2, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/jets3t/service/utils/RestUtils;->initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public static initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;
    .param p2, "proxyHostAddress"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "proxyUser"    # Ljava/lang/String;
    .param p5, "proxyPassword"    # Ljava/lang/String;
    .param p6, "proxyDomain"    # Ljava/lang/String;

    .prologue
    .line 406
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lorg/jets3t/service/utils/RestUtils;->initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public static initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;
    .param p2, "proxyAutodetect"    # Z
    .param p3, "proxyHostAddress"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "proxyUser"    # Ljava/lang/String;
    .param p6, "proxyPassword"    # Ljava/lang/String;
    .param p7, "proxyDomain"    # Ljava/lang/String;

    .prologue
    .line 424
    const-string v0, "s3service.s3-endpoint"

    sget-object v1, Lorg/jets3t/service/Constants;->S3_DEFAULT_HOSTNAME:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "s3Endpoint":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 426
    invoke-static/range {v0 .. v8}, Lorg/jets3t/service/utils/RestUtils;->initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public static initHttpProxy(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;
    .param p2, "proxyAutodetect"    # Z
    .param p3, "proxyHostAddress"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "proxyUser"    # Ljava/lang/String;
    .param p6, "proxyPassword"    # Ljava/lang/String;
    .param p7, "proxyDomain"    # Ljava/lang/String;
    .param p8, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 452
    if-eqz p3, :cond_3

    const/4 v3, -0x1

    if-eq p4, v3, :cond_3

    .line 453
    sget-object v3, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    sget-object v3, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using Proxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 457
    :cond_0
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p3, p4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 458
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 470
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, p0, Lorg/apache/http/impl/client/AbstractHttpClient;

    if-eqz v3, :cond_1

    .line 472
    if-eqz p7, :cond_2

    .line 473
    check-cast p0, Lorg/apache/http/impl/client/AbstractHttpClient;

    .end local p0    # "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v3

    new-instance v4, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v4, p3, p4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/apache/http/auth/NTCredentials;

    invoke-direct {v5, p5, p6, p3, p7}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 514
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    :cond_1
    :goto_0
    return-void

    .line 483
    .restart local v0    # "proxy":Lorg/apache/http/HttpHost;
    .restart local p0    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_2
    check-cast p0, Lorg/apache/http/impl/client/AbstractHttpClient;

    .end local p0    # "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v3

    new-instance v4, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v4, p3, p4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v5, p5, p6}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    goto :goto_0

    .line 493
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    .restart local p0    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_3
    if-eqz p2, :cond_1

    .line 495
    const/4 v1, 0x0

    .line 497
    .local v1, "proxyHost":Lorg/apache/http/HttpHost;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->detectProxy(Ljava/net/URL;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 499
    if-eqz v1, :cond_1

    .line 500
    sget-object v3, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 501
    sget-object v3, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using Proxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 504
    :cond_4
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v2

    .line 509
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 510
    sget-object v3, Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unable to set proxy configuration"

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static makeServiceCanonicalString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 22
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "resource"    # Ljava/lang/String;
    .param p3, "expires"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "serviceResourceParameterNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v5, "canonicalStringBuf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 184
    .local v9, "interestingHeaders":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 185
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 186
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 187
    .local v10, "key":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    .line 189
    .local v19, "value":Ljava/lang/Object;
    if-eqz v10, :cond_0

    .line 192
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 195
    .local v12, "lk":Ljava/lang/String;
    const-string v20, "content-type"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "content-md5"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "date"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 198
    :cond_1
    move-object/from16 v0, v19

    invoke-interface {v9, v12, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "key":Ljava/lang/Object;
    .end local v12    # "lk":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_2
    const-string v20, "x-amz-date"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, "x-goog-date"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 206
    :cond_3
    const-string v20, "date"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_4
    if-eqz p3, :cond_5

    .line 212
    const-string v20, "date"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-interface {v9, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_5
    const-string v20, "content-type"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 218
    const-string v20, "content-type"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_6
    const-string v20, "content-md5"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 221
    const-string v20, "content-md5"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_7
    invoke-interface {v9}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 226
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 227
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    .line 229
    .restart local v19    # "value":Ljava/lang/Object;
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 230
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x3a

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    :goto_2
    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 232
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 238
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_9
    const/16 v20, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 239
    .local v17, "queryIndex":I
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 240
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_3
    if-ltz v17, :cond_11

    .line 248
    new-instance v18, Ljava/util/TreeMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V

    .line 251
    .local v18, "sortedResourceParams":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v20, v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 252
    .local v16, "query":Ljava/lang/String;
    const-string v20, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v11, :cond_d

    aget-object v15, v4, v8

    .line 253
    .local v15, "paramPair":Ljava/lang/String;
    const-string v20, "="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 254
    .local v14, "paramNameValue":[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v14, v20

    const-string v21, "UTF-8"

    invoke-static/range {v20 .. v21}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 255
    .local v13, "name":Ljava/lang/String;
    const/16 v19, 0x0

    .line 256
    .local v19, "value":Ljava/lang/String;
    array-length v0, v14

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 257
    const/16 v20, 0x1

    aget-object v20, v14, v20

    const-string v21, "UTF-8"

    invoke-static/range {v20 .. v21}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 261
    :cond_a
    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 262
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v13, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 242
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v11    # "len$":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "paramNameValue":[Ljava/lang/String;
    .end local v15    # "paramPair":Ljava/lang/String;
    .end local v16    # "query":Ljava/lang/String;
    .end local v18    # "sortedResourceParams":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "value":Ljava/lang/String;
    .local v8, "i$":Ljava/util/Iterator;
    :cond_c
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 267
    .restart local v4    # "arr$":[Ljava/lang/String;
    .local v8, "i$":I
    .restart local v11    # "len$":I
    .restart local v16    # "query":Ljava/lang/String;
    .restart local v18    # "sortedResourceParams":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedMap;->size()I

    move-result v20

    if-lez v20, :cond_e

    .line 268
    const-string v20, "?"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_e
    const/4 v3, 0x0

    .line 271
    .local v3, "addedParam":Z
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 272
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_f

    .line 273
    const-string v20, "&"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_f
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_10

    .line 277
    const-string v20, "="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_10
    const/4 v3, 0x1

    goto :goto_5

    .line 283
    .end local v3    # "addedParam":Z
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "len$":I
    .end local v16    # "query":Ljava/lang/String;
    .end local v18    # "sortedResourceParams":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_11
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20
.end method
