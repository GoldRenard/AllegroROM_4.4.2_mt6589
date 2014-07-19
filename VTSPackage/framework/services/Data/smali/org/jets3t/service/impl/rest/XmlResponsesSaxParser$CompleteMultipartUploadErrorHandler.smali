.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompleteMultipartUploadErrorHandler"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private hostId:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private minSizeAllowed:Ljava/lang/Long;

.field private partNumber:Ljava/lang/Integer;

.field private proposedSize:Ljava/lang/Long;

.field private requestId:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v0, 0x0

    .line 1543
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    .line 1544
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1534
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->code:Ljava/lang/String;

    .line 1535
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->message:Ljava/lang/String;

    .line 1536
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->etag:Ljava/lang/String;

    .line 1537
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->minSizeAllowed:Ljava/lang/Long;

    .line 1538
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->proposedSize:Ljava/lang/Long;

    .line 1539
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->hostId:Ljava/lang/String;

    .line 1540
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->partNumber:Ljava/lang/Integer;

    .line 1541
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->requestId:Ljava/lang/String;

    .line 1545
    return-void
.end method


# virtual methods
.method public endCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1562
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->code:Ljava/lang/String;

    .line 1563
    return-void
.end method

.method public endETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1570
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->etag:Ljava/lang/String;

    .line 1571
    return-void
.end method

.method public endError(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1594
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 1595
    return-void
.end method

.method public endHostId(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1582
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->hostId:Ljava/lang/String;

    .line 1583
    return-void
.end method

.method public endMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1566
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->message:Ljava/lang/String;

    .line 1567
    return-void
.end method

.method public endMinSizeAllowed(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1574
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->minSizeAllowed:Ljava/lang/Long;

    .line 1575
    return-void
.end method

.method public endPartNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1586
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->partNumber:Ljava/lang/Integer;

    .line 1587
    return-void
.end method

.method public endProposedSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1578
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->proposedSize:Ljava/lang/Long;

    .line 1579
    return-void
.end method

.method public endRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1590
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->requestId:Ljava/lang/String;

    .line 1591
    return-void
.end method

.method public getServiceException()Lorg/jets3t/service/ServiceException;
    .locals 4

    .prologue
    .line 1548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": PartNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->partNumber:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MinSizeAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->minSizeAllowed:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ProposedSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->proposedSize:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ETag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->etag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "fullMessage":Ljava/lang/String;
    new-instance v0, Lorg/jets3t/service/ServiceException;

    invoke-direct {v0, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    .line 1554
    .local v0, "e":Lorg/jets3t/service/ServiceException;
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/jets3t/service/ServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 1555
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/jets3t/service/ServiceException;->setErrorMessage(Ljava/lang/String;)V

    .line 1556
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->hostId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/jets3t/service/ServiceException;->setErrorHostId(Ljava/lang/String;)V

    .line 1557
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/jets3t/service/ServiceException;->setErrorRequestId(Ljava/lang/String;)V

    .line 1558
    return-object v0
.end method
