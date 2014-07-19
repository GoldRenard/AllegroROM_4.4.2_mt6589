.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBucketHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private final commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentObject:Lorg/jets3t/service/model/StorageObject;

.field private currentOwner:Lorg/jets3t/service/model/StorageOwner;

.field private insideCommonPrefixes:Z

.field private lastKey:Ljava/lang/String;

.field private listingTruncated:Z

.field private nextMarker:Ljava/lang/String;

.field private final objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;"
        }
    .end annotation
.end field

.field private requestMarker:Ljava/lang/String;

.field private requestMaxKeys:J

.field private requestPrefix:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 455
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    .line 456
    iput-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    .line 457
    iput-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lorg/jets3t/service/model/StorageOwner;

    .line 458
    iput-boolean v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->objects:Ljava/util/List;

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    .line 464
    iput-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    .line 465
    iput-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->requestPrefix:Ljava/lang/String;

    .line 466
    iput-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->requestMarker:Ljava/lang/String;

    .line 467
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->requestMaxKeys:J

    .line 468
    iput-boolean v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    .line 469
    iput-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    .line 470
    iput-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 552
    const-string v2, "Name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    .line 554
    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Examining listing for bucket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-boolean v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    if-nez v2, :cond_2

    const-string v2, "Prefix"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->requestPrefix:Ljava/lang/String;

    goto :goto_0

    .line 559
    :cond_2
    const-string v2, "Marker"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 560
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->requestMarker:Ljava/lang/String;

    goto :goto_0

    .line 561
    :cond_3
    const-string v2, "NextMarker"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 562
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    goto :goto_0

    .line 563
    :cond_4
    const-string v2, "MaxKeys"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 564
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->requestMaxKeys:J

    goto :goto_0

    .line 565
    :cond_5
    const-string v2, "IsTruncated"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 566
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "isTruncatedStr":Ljava/lang/String;
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 568
    iput-boolean v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    goto :goto_0

    .line 569
    :cond_6
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 570
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    goto :goto_0

    .line 572
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for IsTruncated field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 577
    .end local v1    # "isTruncatedStr":Ljava/lang/String;
    :cond_8
    const-string v2, "Contents"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 578
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->objects:Ljava/util/List;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created new object from listing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 582
    :cond_9
    const-string v2, "Key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 583
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v2, p2}, Lorg/jets3t/service/model/StorageObject;->setKey(Ljava/lang/String;)V

    .line 584
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 585
    :cond_a
    const-string v2, "LastModified"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 587
    :try_start_0
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    invoke-static {p2}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jets3t/service/model/StorageObject;->setLastModifiedDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-ISO8601 date for LastModified in bucket\'s object listing output: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 593
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_b
    const-string v2, "ETag"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 594
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v2, p2}, Lorg/jets3t/service/model/StorageObject;->setETag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 595
    :cond_c
    const-string v2, "Size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 596
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/jets3t/service/model/StorageObject;->setContentLength(J)V

    goto/16 :goto_0

    .line 597
    :cond_d
    const-string v2, "StorageClass"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 598
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v2, p2}, Lorg/jets3t/service/model/StorageObject;->setStorageClass(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 601
    :cond_e
    const-string v2, "ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 604
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lorg/jets3t/service/model/StorageOwner;

    if-nez v2, :cond_f

    .line 605
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-virtual {v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->newOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v2

    iput-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lorg/jets3t/service/model/StorageOwner;

    .line 606
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v2, v3}, Lorg/jets3t/service/model/BaseStorageItem;->setOwner(Lorg/jets3t/service/model/StorageOwner;)V

    .line 609
    :cond_f
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v2, p2}, Lorg/jets3t/service/model/StorageOwner;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 610
    :cond_10
    const-string v2, "DisplayName"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 611
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v2, p2}, Lorg/jets3t/service/model/StorageOwner;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 614
    :cond_11
    iget-boolean v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    if-eqz v2, :cond_12

    const-string v2, "Prefix"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 615
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 616
    :cond_12
    const-string v2, "CommonPrefixes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    iput-boolean v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    goto/16 :goto_0
.end method

.method public getCommonPrefixes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getMarkerForNextListing()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 481
    iget-boolean v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 483
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    .line 493
    :cond_0
    :goto_0
    return-object v0

    .line 484
    :cond_1
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 485
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    goto :goto_0

    .line 487
    :cond_2
    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Unable to find Next Marker or Last Key for truncated listing"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getObjects()[Lorg/jets3t/service/model/StorageObject;
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->objects:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/model/StorageObject;

    return-object v0
.end method

.method public getRequestMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->requestMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMaxKeys()J
    .locals 2

    .prologue
    .line 531
    iget-wide v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->requestMaxKeys:J

    return-wide v0
.end method

.method public getRequestPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->requestPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isListingTruncated()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    return v0
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 536
    const-string v0, "Contents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->newObject()Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    .line 538
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    instance-of v0, v0, Lorg/jets3t/service/model/S3Object;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    check-cast v0, Lorg/jets3t/service/model/S3Object;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/StorageObject;->setBucketName(Ljava/lang/String;)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->newOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lorg/jets3t/service/model/StorageOwner;

    .line 543
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lorg/jets3t/service/model/StorageObject;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/BaseStorageItem;->setOwner(Lorg/jets3t/service/model/StorageOwner;)V

    goto :goto_0

    .line 544
    :cond_2
    const-string v0, "CommonPrefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    goto :goto_0
.end method
