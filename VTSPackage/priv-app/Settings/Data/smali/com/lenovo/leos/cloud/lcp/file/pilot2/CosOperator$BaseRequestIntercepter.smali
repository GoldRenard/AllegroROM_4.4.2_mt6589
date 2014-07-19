.class Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;
.super Ljava/lang/Object;
.source "CosOperator.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseRequestIntercepter"
.end annotation


# instance fields
.field protected connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

.field protected sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;)V
    .locals 0
    .param p1, "connector"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    .line 496
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;->sessionId:Ljava/lang/String;

    .line 497
    return-void
.end method


# virtual methods
.method public afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 521
    return-void
.end method

.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "retryReasonException"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x1

    .line 502
    const/16 v1, 0xc8

    .line 503
    .local v1, "statusCode":I
    :try_start_0
    instance-of v3, p2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;

    if-eqz v3, :cond_0

    .line 504
    check-cast p2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;

    .end local p2    # "retryReasonException":Ljava/lang/Exception;
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;->getStatusCode()I

    move-result v1

    .line 506
    :cond_0
    const/16 v3, 0x191

    if-ne v1, v3, :cond_2

    .line 507
    const-string v3, "Authorization"

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;->connector:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->getSessionId(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :goto_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    return v2

    .line 508
    :cond_2
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_1

    .line 509
    const-string v3, "Authorization"

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    const-string v3, "CosOperator"

    const-string v4, "BaseRequestIntercepter AuthenticationException "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
