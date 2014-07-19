.class Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BatchWriteObjectRequestIntercepter;
.super Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;
.source "CosOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchWriteObjectRequestIntercepter"
.end annotation


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;)V
    .locals 0
    .param p1, "connector"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;)V

    .line 527
    return-void
.end method


# virtual methods
.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 3
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "retryReasonException"    # Ljava/lang/Exception;

    .prologue
    .line 531
    invoke-super {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;->beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z

    move-result v0

    .line 532
    .local v0, "breakRetry":Z
    if-eqz v0, :cond_0

    .line 533
    const/4 v1, 0x1

    .line 538
    :goto_0
    return v1

    .line 536
    :cond_0
    const-string v1, "X-Lenovows-OSS-Callback-Enabled"

    const-string v2, "false"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v1, 0x0

    goto :goto_0
.end method
