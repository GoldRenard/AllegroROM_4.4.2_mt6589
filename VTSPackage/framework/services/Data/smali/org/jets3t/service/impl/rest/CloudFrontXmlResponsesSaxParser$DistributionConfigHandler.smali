.class public Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "CloudFrontXmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DistributionConfigHandler"
.end annotation


# instance fields
.field private callerReference:Ljava/lang/String;

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

.field private defaultRootObject:Ljava/lang/String;

.field private distributionConfig:Lorg/jets3t/service/model/cloudfront/DistributionConfig;

.field private enabled:Z

.field private loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

.field private origin:Lorg/jets3t/service/model/cloudfront/Origin;

.field private final requiredProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

.field private final trustedSignerAwsAccountNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trustedSignerSelf:Z


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 3
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 321
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    .line 322
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 308
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->distributionConfig:Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->callerReference:Ljava/lang/String;

    .line 311
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->cnamesList:Ljava/util/List;

    .line 313
    const-string v0, ""

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->comment:Ljava/lang/String;

    .line 314
    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->enabled:Z

    .line 315
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    .line 316
    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->trustedSignerSelf:Z

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->trustedSignerAwsAccountNumberList:Ljava/util/List;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->requiredProtocols:Ljava/util/List;

    .line 319
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->defaultRootObject:Ljava/lang/String;

    .line 323
    return-void
.end method


# virtual methods
.method public controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 1
    .param p1, "childHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 343
    check-cast p1, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    iget-object v0, p1, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 344
    return-void
.end method

.method public endAwsAccountNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->trustedSignerAwsAccountNumberList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    return-void
.end method

.method public endBucket(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    invoke-virtual {v0, p1}, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->setBucket(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public endCNAME(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->cnamesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public endCallerReference(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->callerReference:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public endComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->comment:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public endDefaultRootObject(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->defaultRootObject:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public endDistributionConfig(Ljava/lang/String;)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->callerReference:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->cnamesList:Ljava/util/List;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->cnamesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->comment:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->enabled:Z

    iget-object v6, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    iget-boolean v7, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->trustedSignerSelf:Z

    iget-object v8, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->trustedSignerAwsAccountNumberList:Ljava/util/List;

    iget-object v9, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->trustedSignerAwsAccountNumberList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iget-object v9, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->requiredProtocols:Ljava/util/List;

    iget-object v10, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->requiredProtocols:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iget-object v10, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->defaultRootObject:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;-><init>(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->distributionConfig:Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    .line 397
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 398
    return-void
.end method

.method public endEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 355
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->enabled:Z

    .line 356
    return-void
.end method

.method public endPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    invoke-virtual {v0, p1}, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->setPrefix(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public endProtocol(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->requiredProtocols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method public endSelf(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->trustedSignerSelf:Z

    .line 372
    return-void
.end method

.method public endStreamingDistributionConfig(Ljava/lang/String;)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 401
    new-instance v0, Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->callerReference:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->cnamesList:Ljava/util/List;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->cnamesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->comment:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->enabled:Z

    iget-object v6, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    iget-boolean v7, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->trustedSignerSelf:Z

    iget-object v8, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->trustedSignerAwsAccountNumberList:Ljava/util/List;

    iget-object v9, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->trustedSignerAwsAccountNumberList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iget-object v9, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->requiredProtocols:Ljava/util/List;

    iget-object v10, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->requiredProtocols:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;-><init>(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->distributionConfig:Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    .line 410
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 411
    return-void
.end method

.method public getDistributionConfig()Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->distributionConfig:Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    return-object v0
.end method

.method public startCustomOrigin()V
    .locals 3

    .prologue
    .line 338
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->access$000(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 339
    return-void
.end method

.method public startLogging()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    invoke-direct {v0}, Lorg/jets3t/service/model/cloudfront/LoggingStatus;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    .line 360
    return-void
.end method

.method public startS3Origin()V
    .locals 3

    .prologue
    .line 334
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->access$000(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 335
    return-void
.end method
