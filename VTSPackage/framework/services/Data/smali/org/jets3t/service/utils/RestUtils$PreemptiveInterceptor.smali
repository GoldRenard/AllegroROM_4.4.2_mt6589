.class Lorg/jets3t/service/utils/RestUtils$PreemptiveInterceptor;
.super Ljava/lang/Object;
.source "RestUtils.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/utils/RestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreemptiveInterceptor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jets3t/service/utils/RestUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jets3t/service/utils/RestUtils$1;

    .prologue
    .line 716
    invoke-direct {p0}, Lorg/jets3t/service/utils/RestUtils$PreemptiveInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 720
    const-string v5, "http.auth.target-scope"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/auth/AuthState;

    .line 722
    .local v1, "authState":Lorg/apache/http/auth/AuthState;
    const-string v5, "http.auth.credentials-provider"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/client/CredentialsProvider;

    .line 724
    .local v3, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    const-string v5, "http.target_host"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/HttpHost;

    .line 727
    .local v4, "targetHost":Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v5

    if-nez v5, :cond_0

    .line 728
    new-instance v0, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 731
    .local v0, "authScope":Lorg/apache/http/auth/AuthScope;
    invoke-interface {v3, v0}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v2

    .line 733
    .local v2, "creds":Lorg/apache/http/auth/Credentials;
    if-eqz v2, :cond_0

    .line 734
    new-instance v5, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct {v5}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    invoke-virtual {v1, v5}, Lorg/apache/http/auth/AuthState;->setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    .line 735
    invoke-virtual {v1, v2}, Lorg/apache/http/auth/AuthState;->setCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 738
    .end local v0    # "authScope":Lorg/apache/http/auth/AuthScope;
    .end local v2    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_0
    return-void
.end method
