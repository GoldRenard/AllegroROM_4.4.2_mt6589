.class public Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "CloudFrontXmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OriginHandler"
.end annotation


# instance fields
.field private dnsName:Ljava/lang/String;

.field private httpPort:Ljava/lang/String;

.field private httpsPort:Ljava/lang/String;

.field protected origin:Lorg/jets3t/service/model/cloudfront/Origin;

.field private originAccessIdentity:Ljava/lang/String;

.field private originProtocolPolicy:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v1, 0x0

    .line 567
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    .line 568
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 560
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 561
    const-string v0, ""

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->dnsName:Ljava/lang/String;

    .line 562
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->originAccessIdentity:Ljava/lang/String;

    .line 563
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->httpPort:Ljava/lang/String;

    .line 564
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->httpsPort:Ljava/lang/String;

    .line 565
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->originProtocolPolicy:Ljava/lang/String;

    .line 569
    return-void
.end method


# virtual methods
.method public endCustomOrigin(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 597
    new-instance v0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->dnsName:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->originProtocolPolicy:Ljava/lang/String;

    invoke-static {v2}, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->fromText(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->httpPort:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->httpsPort:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jets3t/service/model/cloudfront/CustomOrigin;-><init>(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;II)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 600
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 601
    return-void
.end method

.method public endDNSName(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 572
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->dnsName:Ljava/lang/String;

    .line 573
    return-void
.end method

.method public endHTTPPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 580
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->httpPort:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public endHTTPSPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 584
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->httpsPort:Ljava/lang/String;

    .line 585
    return-void
.end method

.method public endOriginAccessIdentity(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 576
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->originAccessIdentity:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public endOriginProtocolPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 588
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->originProtocolPolicy:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public endS3Origin(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 592
    new-instance v0, Lorg/jets3t/service/model/cloudfront/S3Origin;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->dnsName:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->originAccessIdentity:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/model/cloudfront/S3Origin;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 593
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 594
    return-void
.end method
