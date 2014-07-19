.class public Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "CloudFrontXmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DistributionHandler"
.end annotation


# instance fields
.field private final activeTrustedSigners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private distribution:Lorg/jets3t/service/model/cloudfront/Distribution;

.field private domainName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private inSignerElement:Z

.field private lastModifiedTime:Ljava/util/Date;

.field private lastSignerIdentifier:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v1, 0x0

    .line 217
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    .line 218
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 205
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->distribution:Lorg/jets3t/service/model/cloudfront/Distribution;

    .line 207
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->id:Ljava/lang/String;

    .line 208
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->status:Ljava/lang/String;

    .line 209
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->lastModifiedTime:Ljava/util/Date;

    .line 210
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->domainName:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->activeTrustedSigners:Ljava/util/Map;

    .line 215
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->lastSignerIdentifier:Ljava/lang/String;

    .line 219
    return-void
.end method


# virtual methods
.method public controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 7
    .param p1, "childHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 285
    check-cast p1, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    invoke-virtual {p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;->getDistributionConfig()Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v6

    .line 287
    .local v6, "config":Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    instance-of v0, v6, Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->id:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->status:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->lastModifiedTime:Ljava/util/Date;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->domainName:Ljava/lang/String;

    iget-object v5, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->activeTrustedSigners:Ljava/util/Map;

    invoke-direct/range {v0 .. v6}, Lorg/jets3t/service/model/cloudfront/StreamingDistribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/model/cloudfront/DistributionConfig;)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->distribution:Lorg/jets3t/service/model/cloudfront/Distribution;

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    new-instance v0, Lorg/jets3t/service/model/cloudfront/Distribution;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->id:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->status:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->lastModifiedTime:Ljava/util/Date;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->domainName:Ljava/lang/String;

    iget-object v5, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->activeTrustedSigners:Ljava/util/Map;

    invoke-direct/range {v0 .. v6}, Lorg/jets3t/service/model/cloudfront/Distribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/model/cloudfront/DistributionConfig;)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->distribution:Lorg/jets3t/service/model/cloudfront/Distribution;

    goto :goto_0
.end method

.method public endAwsAccountNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->inSignerElement:Z

    if-eqz v0, :cond_0

    .line 259
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->lastSignerIdentifier:Ljava/lang/String;

    .line 261
    :cond_0
    return-void
.end method

.method public endDistribution(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 299
    return-void
.end method

.method public endDomainName(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->domainName:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public endId(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->id:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public endKeyPairId(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-boolean v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->inSignerElement:Z

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->activeTrustedSigners:Ljava/util/Map;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->lastSignerIdentifier:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 266
    .local v0, "keypairIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "keypairIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .restart local v0    # "keypairIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->activeTrustedSigners:Ljava/util/Map;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->lastSignerIdentifier:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v0    # "keypairIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
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
    .line 234
    invoke-static {p1}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->lastModifiedTime:Ljava/util/Date;

    .line 235
    return-void
.end method

.method public endSelf(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->inSignerElement:Z

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "Self"

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->lastSignerIdentifier:Ljava/lang/String;

    .line 255
    :cond_0
    return-void
.end method

.method public endSigner(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->inSignerElement:Z

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->lastSignerIdentifier:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public endStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->status:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public endStreamingDistribution(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 304
    return-void
.end method

.method public getDistribution()Lorg/jets3t/service/model/cloudfront/Distribution;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->distribution:Lorg/jets3t/service/model/cloudfront/Distribution;

    return-object v0
.end method

.method public startDistributionConfig()V
    .locals 3

    .prologue
    .line 276
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->access$000(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 277
    return-void
.end method

.method public startSigner()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->inSignerElement:Z

    .line 244
    return-void
.end method

.method public startStreamingDistributionConfig()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;->this$0:Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->access$000(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 281
    return-void
.end method
