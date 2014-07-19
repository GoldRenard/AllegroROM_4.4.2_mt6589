.class Lorg/jets3t/service/utils/oauth/OAuthUtils$2;
.super Ljava/util/ArrayList;
.source "OAuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/utils/oauth/OAuthUtils;->refreshOAuth2AccessToken(Lorg/jets3t/service/security/OAuth2Tokens;)Lorg/jets3t/service/security/OAuth2Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/apache/http/NameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/utils/oauth/OAuthUtils;

.field final synthetic val$tokens:Lorg/jets3t/service/security/OAuth2Tokens;


# direct methods
.method constructor <init>(Lorg/jets3t/service/utils/oauth/OAuthUtils;Lorg/jets3t/service/security/OAuth2Tokens;)V
    .locals 3

    .prologue
    .line 250
    iput-object p1, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils$2;->this$0:Lorg/jets3t/service/utils/oauth/OAuthUtils;

    iput-object p2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils$2;->val$tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "client_id"

    iget-object v2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils$2;->this$0:Lorg/jets3t/service/utils/oauth/OAuthUtils;

    iget-object v2, v2, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "client_secret"

    iget-object v2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils$2;->this$0:Lorg/jets3t/service/utils/oauth/OAuthUtils;

    iget-object v2, v2, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientSecret:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "refresh_token"

    iget-object v2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils$2;->val$tokens:Lorg/jets3t/service/security/OAuth2Tokens;

    invoke-virtual {v2}, Lorg/jets3t/service/security/OAuth2Tokens;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "grant_type"

    const-string v2, "refresh_token"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method
