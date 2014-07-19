.class public Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "CloudFrontXmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DistributionSummaryHandler"
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

.field private comment:Ljava/lang/String;

.field private distribution:Lorg/jets3t/service/model/cloudfront/Distribution;

.field private domainName:Ljava/lang/String;

.field private enabled:Z

.field private id:Ljava/lang/String;

.field private lastModifiedTime:Ljava/util/Date;

.field private origin:Lorg/jets3t/service/model/cloudfront/Origin;

.field private status:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v1, 0x0

    .line 426
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    .line 427
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 415
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->distribution:Lorg/jets3t/service/model/cloudfront/Distribution;

    .line 417
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->id:Ljava/lang/String;

    .line 418
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->status:Ljava/lang/String;

    .line 419
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->lastModifiedTime:Ljava/util/Date;

    .line 420
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->domainName:Ljava/lang/String;

    .line 421
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->cnamesList:Ljava/util/List;

    .line 423
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->comment:Ljava/lang/String;

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->enabled:Z

    .line 428
    return-void
.end method


# virtual methods
.method public controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 1
    .param p1, "childHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 460
    check-cast p1, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    iget-object v0, p1, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 461
    return-void
.end method

.method public endCNAME(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 464
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->cnamesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method public endComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 468
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->comment:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public endDistributionSummary(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 476
    new-instance v0, Lorg/jets3t/service/model/cloudfront/Distribution;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->id:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->status:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->lastModifiedTime:Ljava/util/Date;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->domainName:Ljava/lang/String;

    iget-object v5, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    iget-object v6, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->cnamesList:Ljava/util/List;

    iget-object v7, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->cnamesList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget-object v7, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->comment:Ljava/lang/String;

    iget-boolean v8, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->enabled:Z

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/model/cloudfront/Distribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->distribution:Lorg/jets3t/service/model/cloudfront/Distribution;

    .line 480
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 481
    return-void
.end method

.method public endDomainName(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->domainName:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public endEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 472
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->enabled:Z

    .line 473
    return-void
.end method

.method public endId(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 435
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->id:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public endLastModifiedTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-static {p1}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->lastModifiedTime:Ljava/util/Date;

    .line 444
    return-void
.end method

.method public endStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 439
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->status:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public endStreamingDistributionSummary(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 484
    new-instance v0, Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->id:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->status:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->lastModifiedTime:Ljava/util/Date;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->domainName:Ljava/lang/String;

    iget-object v5, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    iget-object v6, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->cnamesList:Ljava/util/List;

    iget-object v7, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->cnamesList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget-object v7, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->comment:Ljava/lang/String;

    iget-boolean v8, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->enabled:Z

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/model/cloudfront/StreamingDistribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->distribution:Lorg/jets3t/service/model/cloudfront/Distribution;

    .line 488
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 489
    return-void
.end method

.method public getDistribution()Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->distribution:Lorg/jets3t/service/model/cloudfront/Distribution;

    return-object v0
.end method

.method public startCustomOrigin()V
    .locals 3

    .prologue
    .line 455
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->access$000(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 456
    return-void
.end method

.method public startS3Origin()V
    .locals 3

    .prologue
    .line 451
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->access$000(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 452
    return-void
.end method
