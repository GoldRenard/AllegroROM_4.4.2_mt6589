.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListMultipartPartsResultHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private inInitiator:Z

.field private initiator:Lorg/jets3t/service/model/S3Owner;

.field private isTruncated:Z

.field private maxParts:I

.field private nextPartNumberMarker:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private owner:Lorg/jets3t/service/model/S3Owner;

.field private partNumberMarker:Ljava/lang/String;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipartPart;",
            ">;"
        }
    .end annotation
.end field

.field private storageClass:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 3
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1377
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    .line 1378
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->parts:Ljava/util/List;

    .line 1364
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->bucketName:Ljava/lang/String;

    .line 1365
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->objectKey:Ljava/lang/String;

    .line 1366
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->uploadId:Ljava/lang/String;

    .line 1367
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->initiator:Lorg/jets3t/service/model/S3Owner;

    .line 1368
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->owner:Lorg/jets3t/service/model/S3Owner;

    .line 1369
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->storageClass:Ljava/lang/String;

    .line 1370
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->partNumberMarker:Ljava/lang/String;

    .line 1371
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->nextPartNumberMarker:Ljava/lang/String;

    .line 1372
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->maxParts:I

    .line 1373
    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->isTruncated:Z

    .line 1375
    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->inInitiator:Z

    .line 1379
    return-void
.end method


# virtual methods
.method public controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 2
    .param p1, "childHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 1431
    instance-of v0, p1, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->parts:Ljava/util/List;

    check-cast p1, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    invoke-virtual {p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->getMultipartPart()Lorg/jets3t/service/model/MultipartPart;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    :goto_0
    return-void

    .line 1435
    .restart local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    :cond_0
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->inInitiator:Z

    if-eqz v0, :cond_1

    .line 1436
    check-cast p1, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    invoke-virtual {p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;->getOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Owner;

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->initiator:Lorg/jets3t/service/model/S3Owner;

    goto :goto_0

    .line 1438
    .restart local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    :cond_1
    check-cast p1, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    invoke-virtual {p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;->getOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Owner;

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->owner:Lorg/jets3t/service/model/S3Owner;

    goto :goto_0
.end method

.method public endBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1454
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->bucketName:Ljava/lang/String;

    .line 1455
    return-void
.end method

.method public endIsTruncated(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1482
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->isTruncated:Z

    .line 1483
    return-void
.end method

.method public endKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1458
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->objectKey:Ljava/lang/String;

    .line 1459
    return-void
.end method

.method public endMaxParts(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1478
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->maxParts:I

    .line 1479
    return-void
.end method

.method public endNextPartNumberMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1474
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->nextPartNumberMarker:Ljava/lang/String;

    .line 1475
    return-void
.end method

.method public endPartNumberMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1470
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->partNumberMarker:Ljava/lang/String;

    .line 1471
    return-void
.end method

.method public endStorageClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1462
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->storageClass:Ljava/lang/String;

    .line 1463
    return-void
.end method

.method public endUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1466
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->uploadId:Ljava/lang/String;

    .line 1467
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getInitiator()Lorg/jets3t/service/model/S3Owner;
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->initiator:Lorg/jets3t/service/model/S3Owner;

    return-object v0
.end method

.method public getMaxParts()I
    .locals 1

    .prologue
    .line 1422
    iget v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->maxParts:I

    return v0
.end method

.method public getMultipartPartList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipartPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getNextPartNumberMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->nextPartNumberMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lorg/jets3t/service/model/S3Owner;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->owner:Lorg/jets3t/service/model/S3Owner;

    return-object v0
.end method

.method public getPartNumberMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->partNumberMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 1386
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->isTruncated:Z

    return v0
.end method

.method public startInitiator()V
    .locals 3

    .prologue
    .line 1444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->inInitiator:Z

    .line 1445
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$100(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 1446
    return-void
.end method

.method public startOwner()V
    .locals 3

    .prologue
    .line 1449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->inInitiator:Z

    .line 1450
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$100(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 1451
    return-void
.end method

.method public startPart()V
    .locals 3

    .prologue
    .line 1426
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$100(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 1427
    return-void
.end method
