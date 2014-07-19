.class public Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "CloudFrontXmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OriginAccessIdentityConfigHandler"
.end annotation


# instance fields
.field private callerReference:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private config:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v0, 0x0

    .line 658
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    .line 659
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 654
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->callerReference:Ljava/lang/String;

    .line 655
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->comment:Ljava/lang/String;

    .line 656
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->config:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    .line 660
    return-void
.end method


# virtual methods
.method public endCallerReference(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 667
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->callerReference:Ljava/lang/String;

    .line 668
    return-void
.end method

.method public endCloudFrontOriginAccessIdentityConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 675
    new-instance v0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->callerReference:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->comment:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->config:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    .line 676
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 677
    return-void
.end method

.method public endComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 671
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->comment:Ljava/lang/String;

    .line 672
    return-void
.end method

.method public getOriginAccessIdentityConfig()Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;->config:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    return-object v0
.end method
