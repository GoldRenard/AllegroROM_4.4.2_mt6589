.class public Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "CloudFrontXmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvalidationListHandler"
.end annotation


# instance fields
.field private invalidationList:Lorg/jets3t/service/model/cloudfront/InvalidationList;

.field private invalidationSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/InvalidationSummary;",
            ">;"
        }
    .end annotation
.end field

.field private invalidationSummaryId:Ljava/lang/String;

.field private invalidationSummaryStatus:Ljava/lang/String;

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

    .line 750
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    .line 751
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 740
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->marker:Ljava/lang/String;

    .line 741
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->nextMarker:Ljava/lang/String;

    .line 742
    const/16 v0, 0x64

    iput v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->maxItems:I

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->isTruncated:Z

    .line 744
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationSummaryId:Ljava/lang/String;

    .line 745
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationSummaryStatus:Ljava/lang/String;

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationSummaries:Ljava/util/List;

    .line 748
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationList:Lorg/jets3t/service/model/cloudfront/InvalidationList;

    .line 752
    return-void
.end method


# virtual methods
.method public endId(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 792
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationSummaryId:Ljava/lang/String;

    .line 793
    return-void
.end method

.method public endInvalidationList(Ljava/lang/String;)V
    .locals 6
    .param p1, "ignore"    # Ljava/lang/String;

    .prologue
    .line 803
    new-instance v0, Lorg/jets3t/service/model/cloudfront/InvalidationList;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->marker:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->nextMarker:Ljava/lang/String;

    iget v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->maxItems:I

    iget-boolean v4, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->isTruncated:Z

    iget-object v5, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationSummaries:Ljava/util/List;

    invoke-direct/range {v0 .. v5}, Lorg/jets3t/service/model/cloudfront/InvalidationList;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationList:Lorg/jets3t/service/model/cloudfront/InvalidationList;

    .line 806
    return-void
.end method

.method public endIsTruncated(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 787
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->isTruncated:Z

    .line 788
    return-void
.end method

.method public endMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 775
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->marker:Ljava/lang/String;

    .line 776
    return-void
.end method

.method public endMaxItems(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 783
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->maxItems:I

    .line 784
    return-void
.end method

.method public endNextMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 779
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->nextMarker:Ljava/lang/String;

    .line 780
    return-void
.end method

.method public endStatus(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 797
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationSummaryStatus:Ljava/lang/String;

    .line 798
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationSummaries:Ljava/util/List;

    new-instance v1, Lorg/jets3t/service/model/cloudfront/InvalidationSummary;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationSummaryId:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationSummaryStatus:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/jets3t/service/model/cloudfront/InvalidationSummary;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    return-void
.end method

.method public getInvalidationList()Lorg/jets3t/service/model/cloudfront/InvalidationList;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->invalidationList:Lorg/jets3t/service/model/cloudfront/InvalidationList;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->maxItems:I

    return v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;->isTruncated:Z

    return v0
.end method
