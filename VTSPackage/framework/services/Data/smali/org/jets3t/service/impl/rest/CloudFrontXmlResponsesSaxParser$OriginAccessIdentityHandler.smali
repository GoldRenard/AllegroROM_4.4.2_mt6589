.class public Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "CloudFrontXmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OriginAccessIdentityHandler"
.end annotation


# instance fields
.field private comment:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private originAccessIdentity:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;

.field private originAccessIdentityConfig:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

.field private s3CanonicalUserId:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v0, 0x0

    .line 611
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    .line 612
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 605
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->id:Ljava/lang/String;

    .line 606
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->s3CanonicalUserId:Ljava/lang/String;

    .line 607
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->comment:Ljava/lang/String;

    .line 608
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->originAccessIdentity:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;

    .line 609
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->originAccessIdentityConfig:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    .line 613
    return-void
.end method


# virtual methods
.method public controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 1
    .param p1, "childHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 637
    check-cast p1, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    invoke-virtual {p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->getOriginAccessIdentityConfig()Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->originAccessIdentityConfig:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    .line 639
    return-void
.end method

.method public endCloudFrontOriginAccessIdentity(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 642
    new-instance v0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->id:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->s3CanonicalUserId:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->originAccessIdentityConfig:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    invoke-direct {v0, v1, v2, v3}, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->originAccessIdentity:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;

    .line 644
    return-void
.end method

.method public endCloudFrontOriginAccessIdentitySummary(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 647
    new-instance v0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->id:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->s3CanonicalUserId:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->comment:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->originAccessIdentity:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;

    .line 649
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 650
    return-void
.end method

.method public endComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 628
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->comment:Ljava/lang/String;

    .line 629
    return-void
.end method

.method public endId(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 620
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->id:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public endS3CanonicalUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 624
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->s3CanonicalUserId:Ljava/lang/String;

    .line 625
    return-void
.end method

.method public getOriginAccessIdentity()Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->originAccessIdentity:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;

    return-object v0
.end method

.method public startCloudFrontOriginAccessIdentityConfig()V
    .locals 3

    .prologue
    .line 632
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->access$000(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 633
    return-void
.end method
