.class public Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "CloudFrontXmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OriginAccessIdentityListHandler"
.end annotation


# instance fields
.field private isTruncated:Z

.field private marker:Ljava/lang/String;

.field private maxItems:I

.field private nextMarker:Ljava/lang/String;

.field private final originAccessIdentityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v1, 0x0

    .line 688
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    .line 689
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 681
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->originAccessIdentityList:Ljava/util/List;

    .line 683
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->marker:Ljava/lang/String;

    .line 684
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->nextMarker:Ljava/lang/String;

    .line 685
    const/16 v0, 0x64

    iput v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->maxItems:I

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->isTruncated:Z

    .line 690
    return-void
.end method


# virtual methods
.method public controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 2
    .param p1, "childHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 718
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->originAccessIdentityList:Ljava/util/List;

    check-cast p1, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    invoke-virtual {p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->getOriginAccessIdentity()Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    return-void
.end method

.method public endIsTruncated(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 735
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->isTruncated:Z

    .line 736
    return-void
.end method

.method public endMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 723
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->marker:Ljava/lang/String;

    .line 724
    return-void
.end method

.method public endMaxItems(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 731
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->maxItems:I

    .line 732
    return-void
.end method

.method public endNextMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 727
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->nextMarker:Ljava/lang/String;

    .line 728
    return-void
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->maxItems:I

    return v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginAccessIdentityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->originAccessIdentityList:Ljava/util/List;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->isTruncated:Z

    return v0
.end method

.method public startCloudFrontOriginAccessIdentitySummary()V
    .locals 3

    .prologue
    .line 713
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->access$000(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 714
    return-void
.end method
