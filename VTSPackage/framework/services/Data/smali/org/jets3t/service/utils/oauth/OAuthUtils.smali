.class public Lorg/jets3t/service/utils/oauth/OAuthUtils;
.super Ljava/lang/Object;
.source "OAuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;
    }
.end annotation


# static fields
.field protected static final HTTP_USER_AGENT:Ljava/lang/String; = "OAuthUtils/0.9.0"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field protected clientId:Ljava/lang/String;

.field protected clientSecret:Ljava/lang/String;

.field protected httpClient:Lorg/apache/http/client/HttpClient;

.field protected implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

.field protected jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/jets3t/service/utils/oauth/OAuthUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p2, "implementation"    # Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "clientSecret"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v1, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 73
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 75
    iput-object v1, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    .line 76
    iput-object v1, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientId:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientSecret:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    .line 110
    iput-object p3, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientId:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientSecret:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 114
    iget-object v0, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientSecret:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null arguments not permitted when constructing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "implementation"    # Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lorg/jets3t/service/Constants;->JETS3T_PROPERTIES_FILENAME:Ljava/lang/String;

    invoke-static {v0}, Lorg/jets3t/service/Jets3tProperties;->getInstance(Ljava/lang/String;)Lorg/jets3t/service/Jets3tProperties;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jets3t/service/utils/oauth/OAuthUtils;-><init>(Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/Jets3tProperties;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/Jets3tProperties;)V
    .locals 2
    .param p1, "implementation"    # Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;
    .param p4, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;

    .prologue
    const/4 v1, 0x0

    .line 91
    const-string v0, "OAuthUtils/0.9.0"

    invoke-static {v1, p4, v0, v1}, Lorg/jets3t/service/utils/RestUtils;->initHttpConnection(Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;Lorg/jets3t/service/Jets3tProperties;Ljava/lang/String;Lorg/apache/http/client/CredentialsProvider;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jets3t/service/utils/oauth/OAuthUtils;-><init>(Lorg/apache/http/client/HttpClient;Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method


# virtual methods
.method public generateBrowserUrlToAuthorizeNativeApplication(Lorg/jets3t/service/utils/oauth/OAuthScope;)Ljava/lang/String;
    .locals 4
    .param p1, "scope"    # Lorg/jets3t/service/utils/oauth/OAuthScope;

    .prologue
    .line 157
    iget-object v1, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    sget-object v2, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;->GOOGLE_STORAGE_OAUTH2_10:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    if-ne v1, v2, :cond_0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://accounts.google.com/o/oauth2/auth?response_type=code&redirect_uri=urn:ietf:wg:oauth:2.0:oob&client_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&scope="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lorg/jets3t/service/utils/oauth/OAuthUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated authorization URL for OAuth implementation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 165
    return-object v0

    .line 168
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported implementation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method protected performPostRequestAndParseJSONResponse(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .param p1, "endpointUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    .local p2, "postParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    sget-object v2, Lorg/jets3t/service/utils/oauth/OAuthUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performing POST request to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and expecting JSON response. POST parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 305
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 308
    iget-object v2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v3, Lorg/jets3t/service/utils/oauth/OAuthUtils$3;

    invoke-direct {v3, p0}, Lorg/jets3t/service/utils/oauth/OAuthUtils$3;-><init>(Lorg/jets3t/service/utils/oauth/OAuthUtils;)V

    invoke-interface {v2, v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 326
    .local v1, "responseDataString":Ljava/lang/String;
    iget-object v2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    const-class v3, Ljava/util/Map;

    invoke-virtual {v2, v1, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    return-object v2
.end method

.method public refreshOAuth2AccessToken(Lorg/jets3t/service/security/OAuth2Tokens;)Lorg/jets3t/service/security/OAuth2Tokens;
    .locals 8
    .param p1, "tokens"    # Lorg/jets3t/service/security/OAuth2Tokens;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    sget-object v5, Lorg/jets3t/service/utils/oauth/OAuthUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Refreshing OAuth2 access token using implementation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with refresh token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/jets3t/service/security/OAuth2Tokens;->getRefreshToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 245
    const/4 v3, 0x0

    .line 247
    .local v3, "responseData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    sget-object v6, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;->GOOGLE_STORAGE_OAUTH2_10:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    if-ne v5, v6, :cond_3

    .line 248
    const-string v5, "https://accounts.google.com/o/oauth2/token"

    new-instance v6, Lorg/jets3t/service/utils/oauth/OAuthUtils$2;

    invoke-direct {v6, p0, p1}, Lorg/jets3t/service/utils/oauth/OAuthUtils$2;-><init>(Lorg/jets3t/service/utils/oauth/OAuthUtils;Lorg/jets3t/service/security/OAuth2Tokens;)V

    invoke-virtual {p0, v5, v6}, Lorg/jets3t/service/utils/oauth/OAuthUtils;->performPostRequestAndParseJSONResponse(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 256
    sget-object v5, Lorg/jets3t/service/utils/oauth/OAuthUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrieved access token refresh data from OAuth2 token endpoint https://accounts.google.com/o/oauth2/token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 260
    const-string v5, "error"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 262
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OAuth2 error refreshing access token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    :cond_0
    const-string v5, "access_token"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    .local v0, "accessToken":Ljava/lang/String;
    const-string v5, "expires_in"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 268
    .local v2, "expiresIn":Ljava/lang/Number;
    const-string v5, "token_type"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 271
    .local v4, "tokenType":Ljava/lang/String;
    const-string v5, "Bearer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 272
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OAuth2 error refreshing access token, invalid token type in data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 275
    :cond_1
    if-nez v0, :cond_2

    .line 276
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OAuth2 error refreshing access token, missing token in data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 280
    :cond_2
    new-instance v5, Lorg/jets3t/service/security/OAuth2Tokens;

    invoke-virtual {p1}, Lorg/jets3t/service/security/OAuth2Tokens;->getRefreshToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lorg/jets3t/service/security/OAuth2Tokens;->calculateExpiry(Ljava/lang/Number;)Ljava/util/Date;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lorg/jets3t/service/security/OAuth2Tokens;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v5

    .line 285
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "expiresIn":Ljava/lang/Number;
    .end local v4    # "tokenType":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported implementation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public retrieveOAuth2TokensFromAuthorization(Ljava/lang/String;)Lorg/jets3t/service/security/OAuth2Tokens;
    .locals 9
    .param p1, "authorizationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    sget-object v6, Lorg/jets3t/service/utils/oauth/OAuthUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retrieving OAuth2 tokens using implementation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with authorization code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 188
    iget-object v6, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    sget-object v7, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;->GOOGLE_STORAGE_OAUTH2_10:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    if-ne v6, v7, :cond_4

    .line 189
    const-string v6, "https://accounts.google.com/o/oauth2/token"

    new-instance v7, Lorg/jets3t/service/utils/oauth/OAuthUtils$1;

    invoke-direct {v7, p0, p1}, Lorg/jets3t/service/utils/oauth/OAuthUtils$1;-><init>(Lorg/jets3t/service/utils/oauth/OAuthUtils;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lorg/jets3t/service/utils/oauth/OAuthUtils;->performPostRequestAndParseJSONResponse(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 198
    .local v4, "responseData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v6, Lorg/jets3t/service/utils/oauth/OAuthUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retrieved authorization data from OAuth2 token endpoint https://accounts.google.com/o/oauth2/token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 202
    const-string v6, "error"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 204
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OAuth2 authentication-to-tokens error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 208
    :cond_0
    const-string v6, "access_token"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    .local v0, "accessToken":Ljava/lang/String;
    const-string v6, "refresh_token"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 210
    .local v3, "refreshToken":Ljava/lang/String;
    const-string v6, "expires_in"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 211
    .local v2, "expiresIn":Ljava/lang/Number;
    const-string v6, "token_type"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 214
    .local v5, "tokenType":Ljava/lang/String;
    const-string v6, "Bearer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 215
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OAuth2 authentication-to-tokens error, invalid token type in data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 218
    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_3

    .line 219
    :cond_2
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OAuth2 authentication-to-tokens error, missing token(s) in data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 223
    :cond_3
    new-instance v6, Lorg/jets3t/service/security/OAuth2Tokens;

    invoke-static {v2}, Lorg/jets3t/service/security/OAuth2Tokens;->calculateExpiry(Ljava/lang/Number;)Ljava/util/Date;

    move-result-object v7

    invoke-direct {v6, v0, v3, v7}, Lorg/jets3t/service/security/OAuth2Tokens;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v6

    .line 228
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "expiresIn":Ljava/lang/Number;
    .end local v3    # "refreshToken":Ljava/lang/String;
    .end local v4    # "responseData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "tokenType":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported implementation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils;->implementation:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
