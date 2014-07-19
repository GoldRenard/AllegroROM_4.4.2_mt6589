.class Lorg/jets3t/service/utils/oauth/OAuthUtils$1;
.super Ljava/util/ArrayList;
.source "OAuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/utils/oauth/OAuthUtils;->retrieveOAuth2TokensFromAuthorization(Ljava/lang/String;)Lorg/jets3t/service/security/OAuth2Tokens;
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

.field final synthetic val$authorizationCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jets3t/service/utils/oauth/OAuthUtils;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 191
    iput-object p1, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils$1;->this$0:Lorg/jets3t/service/utils/oauth/OAuthUtils;

    iput-object p2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils$1;->val$authorizationCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "client_id"

    iget-object v2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils$1;->this$0:Lorg/jets3t/service/utils/oauth/OAuthUtils;

    iget-object v2, v2, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "client_secret"

    iget-object v2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils$1;->this$0:Lorg/jets3t/service/utils/oauth/OAuthUtils;

    iget-object v2, v2, Lorg/jets3t/service/utils/oauth/OAuthUtils;->clientSecret:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "code"

    iget-object v2, p0, Lorg/jets3t/service/utils/oauth/OAuthUtils$1;->val$authorizationCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "redirect_uri"

    const-string v2, "urn:ietf:wg:oauth:2.0:oob"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method
