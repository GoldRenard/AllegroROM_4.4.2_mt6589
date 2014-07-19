.class Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;
.super Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;
.source "CosOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteObjectRequestIntercepter"
.end annotation


# instance fields
.field private commit:Z

.field private contentType:Ljava/lang/String;

.field private partNumber:J

.field private rangeEnd:J

.field private rangeStart:J


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;JJJ)V
    .locals 4
    .param p1, "connector"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "partNumber"    # J
    .param p5, "offset"    # J
    .param p7, "length"    # J

    .prologue
    .line 457
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->commit:Z

    .line 458
    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->partNumber:J

    .line 459
    iput-wide p5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->rangeStart:J

    .line 460
    add-long v0, p5, p7

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->rangeEnd:J

    .line 461
    return-void
.end method


# virtual methods
.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "retryReasonException"    # Ljava/lang/Exception;

    .prologue
    .line 465
    invoke-super {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$BaseRequestIntercepter;->beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z

    move-result v0

    .line 466
    .local v0, "breakRetry":Z
    if-eqz v0, :cond_0

    .line 467
    const/4 v1, 0x1

    .line 486
    :goto_0
    return v1

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->contentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 471
    const-string v1, "Content-Type"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_1
    const-string v1, "X-Lenovows-Range"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->rangeStart:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->rangeEnd:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v1, "X-Lenovows-Part-Number"

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->partNumber:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "X-Lenovows-Commit"

    iget-boolean v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->commit:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v1, "header"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-Lenovows-Range"

    invoke-virtual {p1, v3}, Lorg/apache/http/message/AbstractHttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 479
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X-Lenovows-Part-Number"

    invoke-virtual {p1, v3}, Lorg/apache/http/message/AbstractHttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 480
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X-Lenovows-Commit"

    invoke-virtual {p1, v3}, Lorg/apache/http/message/AbstractHttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->commit:Z

    if-eqz v1, :cond_2

    .line 483
    const-string v1, "X-Lenovows-OSS-Callback-Enabled"

    const-string v2, "true"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public setCommit(Z)V
    .locals 0
    .param p1, "commit"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->commit:Z

    .line 454
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator$WriteObjectRequestIntercepter;->contentType:Ljava/lang/String;

    .line 450
    return-void
.end method
