.class public Lorg/jets3t/service/security/OAuth2Credentials;
.super Lorg/jets3t/service/security/ProviderCredentials;
.source "OAuth2Credentials.java"


# instance fields
.field private oauth2Tokens:Lorg/jets3t/service/security/OAuth2Tokens;

.field private oauthUtils:Lorg/jets3t/service/utils/oauth/OAuthUtils;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jets3t/service/security/OAuth2Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "friendlyName"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jets3t/service/security/OAuth2Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientSecret"    # Ljava/lang/String;
    .param p3, "friendlyName"    # Ljava/lang/String;
    .param p4, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lorg/jets3t/service/utils/oauth/OAuthUtils;

    sget-object v1, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;->GOOGLE_STORAGE_OAUTH2_10:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    invoke-direct {v0, v1, p1, p2}, Lorg/jets3t/service/utils/oauth/OAuthUtils;-><init>(Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lorg/jets3t/service/security/OAuth2Credentials;-><init>(Lorg/jets3t/service/utils/oauth/OAuthUtils;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/utils/oauth/OAuthUtils;Ljava/lang/String;)V
    .locals 1
    .param p1, "oauth"    # Lorg/jets3t/service/utils/oauth/OAuthUtils;
    .param p2, "friendlyName"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jets3t/service/security/OAuth2Credentials;-><init>(Lorg/jets3t/service/utils/oauth/OAuthUtils;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/utils/oauth/OAuthUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "oauth"    # Lorg/jets3t/service/utils/oauth/OAuthUtils;
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "refreshToken"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p1}, Lorg/jets3t/service/utils/oauth/OAuthUtils;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jets3t/service/utils/oauth/OAuthUtils;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/jets3t/service/security/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauthUtils:Lorg/jets3t/service/utils/oauth/OAuthUtils;

    .line 94
    if-nez p3, :cond_0

    .line 95
    iput-object v2, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauth2Tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Lorg/jets3t/service/security/OAuth2Tokens;

    invoke-direct {v0, v2, p3}, Lorg/jets3t/service/security/OAuth2Tokens;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauth2Tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    goto :goto_0
.end method

.method private refreshOAuth2Tokens()Lorg/jets3t/service/security/OAuth2Tokens;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v1, Lorg/jets3t/service/security/OAuth2Credentials;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refreshing OAuth2 access token using refresh token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauth2Tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    invoke-virtual {v3}, Lorg/jets3t/service/security/OAuth2Tokens;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauthUtils:Lorg/jets3t/service/utils/oauth/OAuthUtils;

    iget-object v2, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauth2Tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    invoke-virtual {v1, v2}, Lorg/jets3t/service/utils/oauth/OAuthUtils;->refreshOAuth2AccessToken(Lorg/jets3t/service/security/OAuth2Tokens;)Lorg/jets3t/service/security/OAuth2Tokens;

    move-result-object v0

    .line 121
    .local v0, "newTokens":Lorg/jets3t/service/security/OAuth2Tokens;
    invoke-virtual {p0, v0}, Lorg/jets3t/service/security/OAuth2Credentials;->setOAuth2Tokens(Lorg/jets3t/service/security/OAuth2Tokens;)V

    .line 122
    sget-object v1, Lorg/jets3t/service/security/OAuth2Credentials;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refreshed OAuth2 access token to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jets3t/service/security/OAuth2Tokens;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with expiry at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jets3t/service/security/OAuth2Tokens;->getExpiry()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 124
    return-object v0
.end method


# virtual methods
.method public generateBrowserUrlToAuthorizeNativeApplication(Lorg/jets3t/service/utils/oauth/OAuthScope;)Ljava/lang/String;
    .locals 1
    .param p1, "scope"    # Lorg/jets3t/service/utils/oauth/OAuthScope;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauthUtils:Lorg/jets3t/service/utils/oauth/OAuthUtils;

    invoke-virtual {v0, p1}, Lorg/jets3t/service/utils/oauth/OAuthUtils;->generateBrowserUrlToAuthorizeNativeApplication(Lorg/jets3t/service/utils/oauth/OAuthScope;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuth2Tokens()Lorg/jets3t/service/security/OAuth2Tokens;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauth2Tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauth2Tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    invoke-virtual {v0}, Lorg/jets3t/service/security/OAuth2Tokens;->isAccessTokenExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-direct {p0}, Lorg/jets3t/service/security/OAuth2Credentials;->refreshOAuth2Tokens()Lorg/jets3t/service/security/OAuth2Tokens;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauth2Tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauth2Tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    goto :goto_0
.end method

.method protected getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "OAuth2Client"

    return-object v0
.end method

.method public getVersionPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "jets3t OAuth2 Client Credentials, version: "

    return-object v0
.end method

.method public retrieveOAuth2TokensFromAuthorization(Ljava/lang/String;)V
    .locals 1
    .param p1, "authorizationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauthUtils:Lorg/jets3t/service/utils/oauth/OAuthUtils;

    invoke-virtual {v0, p1}, Lorg/jets3t/service/utils/oauth/OAuthUtils;->retrieveOAuth2TokensFromAuthorization(Ljava/lang/String;)Lorg/jets3t/service/security/OAuth2Tokens;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauth2Tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    .line 135
    return-void
.end method

.method public setOAuth2Tokens(Lorg/jets3t/service/security/OAuth2Tokens;)V
    .locals 0
    .param p1, "tokens"    # Lorg/jets3t/service/security/OAuth2Tokens;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/jets3t/service/security/OAuth2Credentials;->oauth2Tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    .line 104
    return-void
.end method
