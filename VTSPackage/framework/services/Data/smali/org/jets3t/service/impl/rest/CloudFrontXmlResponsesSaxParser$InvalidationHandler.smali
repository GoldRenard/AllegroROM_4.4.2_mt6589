.class public Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "CloudFrontXmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvalidationHandler"
.end annotation


# instance fields
.field private invalidation:Lorg/jets3t/service/model/cloudfront/Invalidation;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 812
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    .line 813
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 810
    new-instance v0, Lorg/jets3t/service/model/cloudfront/Invalidation;

    invoke-direct {v0}, Lorg/jets3t/service/model/cloudfront/Invalidation;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;->invalidation:Lorg/jets3t/service/model/cloudfront/Invalidation;

    .line 814
    return-void
.end method


# virtual methods
.method public endCallerReference(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 838
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;->invalidation:Lorg/jets3t/service/model/cloudfront/Invalidation;

    invoke-virtual {v0, p1}, Lorg/jets3t/service/model/cloudfront/Invalidation;->setCallerReference(Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method public endCreateTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 829
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;->invalidation:Lorg/jets3t/service/model/cloudfront/Invalidation;

    invoke-static {p1}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/cloudfront/Invalidation;->setCreateTime(Ljava/util/Date;)V

    .line 831
    return-void
.end method

.method public endId(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 821
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;->invalidation:Lorg/jets3t/service/model/cloudfront/Invalidation;

    invoke-virtual {v0, p1}, Lorg/jets3t/service/model/cloudfront/Invalidation;->setId(Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method public endPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 834
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;->invalidation:Lorg/jets3t/service/model/cloudfront/Invalidation;

    invoke-virtual {v0}, Lorg/jets3t/service/model/cloudfront/Invalidation;->getObjectKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    return-void
.end method

.method public endStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 825
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;->invalidation:Lorg/jets3t/service/model/cloudfront/Invalidation;

    invoke-virtual {v0, p1}, Lorg/jets3t/service/model/cloudfront/Invalidation;->setStatus(Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public getInvalidation()Lorg/jets3t/service/model/cloudfront/Invalidation;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;->invalidation:Lorg/jets3t/service/model/cloudfront/Invalidation;

    return-object v0
.end method
