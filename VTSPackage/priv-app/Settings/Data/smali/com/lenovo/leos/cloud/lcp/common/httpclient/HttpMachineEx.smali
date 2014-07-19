.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;
.super Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
.source "HttpMachineEx.java"


# instance fields
.field private gzipFlow:J

.field private realFlow:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    .line 17
    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->realFlow:J

    .line 18
    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->gzipFlow:J

    .line 15
    return-void
.end method


# virtual methods
.method public getBytesWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B
    .locals 5
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)[B

    move-result-object v0

    .line 58
    .local v0, "returnData":[B
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->realFlow:J

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->realFlow:J

    .line 59
    if-eqz p2, :cond_0

    .line 60
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B

    move-result-object v0

    .line 62
    :cond_0
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->gzipFlow:J

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->gzipFlow:J

    .line 63
    return-object v0
.end method

.method public getGzipFlow()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->gzipFlow:J

    return-wide v0
.end method

.method public getRealFlow()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->realFlow:J

    return-wide v0
.end method

.method public getTextWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;
    .locals 3
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->getBytesWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B

    move-result-object v0

    .line 53
    .local v0, "returnData":[B
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public post4TextWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # Ljava/lang/String;
    .param p3, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 35
    .local v0, "byteData":[B
    invoke-virtual {p0, p1, v0, p3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->post4TextWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public post4TextWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;
    .locals 6
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # [B
    .param p3, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->gzip([B)[B

    move-result-object v0

    .line 40
    .local v0, "gzipedData":[B
    :goto_0
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->realFlow:J

    array-length v4, p2

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->realFlow:J

    .line 41
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->gzipFlow:J

    array-length v4, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->gzipFlow:J

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)[B

    move-result-object v1

    .line 43
    .local v1, "returnData":[B
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->realFlow:J

    array-length v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->realFlow:J

    .line 44
    if-eqz p3, :cond_0

    .line 45
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B

    move-result-object v1

    .line 47
    :cond_0
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->gzipFlow:J

    array-length v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->gzipFlow:J

    .line 48
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2

    .end local v0    # "gzipedData":[B
    .end local v1    # "returnData":[B
    :cond_1
    move-object v0, p2

    .line 39
    goto :goto_0
.end method

.method public resetFlow()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->realFlow:J

    .line 22
    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->gzipFlow:J

    .line 23
    return-void
.end method
