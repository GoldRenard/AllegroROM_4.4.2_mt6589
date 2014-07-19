.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompleteMultipartUploadResultHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private serviceException:Lorg/jets3t/service/ServiceException;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 1494
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    .line 1495
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1492
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->serviceException:Lorg/jets3t/service/ServiceException;

    .line 1496
    return-void
.end method


# virtual methods
.method public controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 1
    .param p1, "childHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 1528
    check-cast p1, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    invoke-virtual {p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;->getServiceException()Lorg/jets3t/service/ServiceException;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->serviceException:Lorg/jets3t/service/ServiceException;

    .line 1530
    return-void
.end method

.method public endBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1511
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->bucketName:Ljava/lang/String;

    .line 1512
    return-void
.end method

.method public endETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1519
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->etag:Ljava/lang/String;

    .line 1520
    return-void
.end method

.method public endKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1515
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->objectKey:Ljava/lang/String;

    .line 1516
    return-void
.end method

.method public endLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1507
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->location:Ljava/lang/String;

    .line 1508
    return-void
.end method

.method public getMultipartCompleted()Lorg/jets3t/service/model/MultipartCompleted;
    .locals 5

    .prologue
    .line 1499
    new-instance v0, Lorg/jets3t/service/model/MultipartCompleted;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->location:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->bucketName:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->objectKey:Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->etag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jets3t/service/model/MultipartCompleted;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getServiceException()Lorg/jets3t/service/ServiceException;
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->serviceException:Lorg/jets3t/service/ServiceException;

    return-object v0
.end method

.method public startError()V
    .locals 3

    .prologue
    .line 1523
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$100(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 1524
    return-void
.end method
