.class public Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "CloudFrontXmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DistributionListHandler"
.end annotation


# instance fields
.field private final cnamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final distributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/Distribution;",
            ">;"
        }
    .end annotation
.end field

.field private isTruncated:Z

.field private marker:Ljava/lang/String;

.field private maxItems:I

.field private nextMarker:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v1, 0x0

    .line 500
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    .line 501
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->distributions:Ljava/util/List;

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->cnamesList:Ljava/util/List;

    .line 495
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->marker:Ljava/lang/String;

    .line 496
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->nextMarker:Ljava/lang/String;

    .line 497
    const/16 v0, 0x64

    iput v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->maxItems:I

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->isTruncated:Z

    .line 502
    return-void
.end method


# virtual methods
.method public controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 2
    .param p1, "childHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 534
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->distributions:Ljava/util/List;

    check-cast p1, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    invoke-virtual {p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->getDistribution()Lorg/jets3t/service/model/cloudfront/Distribution;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    return-void
.end method

.method public endCNAME(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->cnamesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    return-void
.end method

.method public endIsTruncated(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 555
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->isTruncated:Z

    .line 556
    return-void
.end method

.method public endMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 543
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->marker:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public endMaxItems(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->maxItems:I

    .line 552
    return-void
.end method

.method public endNextMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 547
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->nextMarker:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public getDistributions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/Distribution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->distributions:Ljava/util/List;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->maxItems:I

    return v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->isTruncated:Z

    return v0
.end method

.method public startDistributionSummary()V
    .locals 3

    .prologue
    .line 525
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->access$000(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 526
    return-void
.end method

.method public startStreamingDistributionSummary()V
    .locals 3

    .prologue
    .line 529
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->access$000(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 530
    return-void
.end method
