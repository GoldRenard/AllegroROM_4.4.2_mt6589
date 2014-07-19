.class public Lorg/jets3t/service/utils/RestUtils$JetS3tRetryHandler;
.super Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.source "RestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/utils/RestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JetS3tRetryHandler"
.end annotation


# instance fields
.field private final requestAuthorizer:Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;


# direct methods
.method public constructor <init>(ILorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;)V
    .locals 1
    .param p1, "pRetryMaxCount"    # I
    .param p2, "requestAuthorizer"    # Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 650
    iput-object p2, p0, Lorg/jets3t/service/utils/RestUtils$JetS3tRetryHandler;->requestAuthorizer:Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;

    .line 651
    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 8
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    const/4 v4, 0x0

    .line 657
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 659
    instance-of v5, p1, Lorg/jets3t/service/io/UnrecoverableIOException;

    if-eqz v5, :cond_1

    .line 660
    # getter for: Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/utils/RestUtils;->access$100()Lorg/apache/commons/logging/Log;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 661
    # getter for: Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/utils/RestUtils;->access$100()Lorg/apache/commons/logging/Log;

    move-result-object v5

    const-string v6, "Deliberate interruption, will not retry"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 708
    :cond_0
    :goto_0
    return v4

    .line 665
    :cond_1
    const-string v5, "http.request"

    invoke-interface {p3, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpRequest;

    .line 669
    .local v3, "request":Lorg/apache/http/HttpRequest;
    instance-of v5, v3, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v5, :cond_2

    .line 670
    check-cast v3, Lorg/apache/http/impl/client/RequestWrapper;

    .end local v3    # "request":Lorg/apache/http/HttpRequest;
    invoke-virtual {v3}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v3

    .line 673
    .restart local v3    # "request":Lorg/apache/http/HttpRequest;
    :cond_2
    instance-of v5, v3, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 676
    check-cast v2, Lorg/apache/http/client/methods/HttpRequestBase;

    .line 679
    .local v2, "method":Lorg/apache/http/client/methods/HttpRequestBase;
    const-string v5, "http.connection"

    invoke-interface {p3, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 682
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 687
    :goto_1
    # getter for: Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/utils/RestUtils;->access$100()Lorg/apache/commons/logging/Log;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 688
    # getter for: Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/utils/RestUtils;->access$100()Lorg/apache/commons/logging/Log;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " request with path \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' - attempt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->getRetryCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 696
    :cond_3
    :try_start_1
    iget-object v5, p0, Lorg/jets3t/service/utils/RestUtils$JetS3tRetryHandler;->requestAuthorizer:Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;

    if-eqz v5, :cond_4

    .line 697
    iget-object v5, p0, Lorg/jets3t/service/utils/RestUtils$JetS3tRetryHandler;->requestAuthorizer:Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;

    invoke-interface {v5, v2, p3}, Lorg/jets3t/service/impl/rest/httpclient/JetS3tRequestAuthorizer;->authorizeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 699
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 700
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/utils/RestUtils;->access$100()Lorg/apache/commons/logging/Log;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 702
    # getter for: Lorg/jets3t/service/utils/RestUtils;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/utils/RestUtils;->access$100()Lorg/apache/commons/logging/Log;

    move-result-object v5

    const-string v6, "Unable to generate updated authorization string for retried request"

    invoke-interface {v5, v6, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 683
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method
