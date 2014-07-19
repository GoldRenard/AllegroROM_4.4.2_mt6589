.class Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "LCPHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$CurlLogger;->this$0:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$CurlLogger;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$CurlLogger;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$CurlLogger;->this$0:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->curlConfiguration:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->access$1(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;

    move-result-object v0

    .line 188
    .local v0, "configuration":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;
    if-eqz v0, :cond_0

    .line 189
    # invokes: Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->isLoggable()Z
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->access$0(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 191
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    const/4 v1, 0x0

    # invokes: Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->access$2(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->access$1(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method
