.class public Lorg/jets3t/service/model/cloudfront/StreamingDistribution;
.super Lorg/jets3t/service/model/cloudfront/Distribution;
.source "StreamingDistribution.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/model/cloudfront/DistributionConfig;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "lastModifiedDate"    # Ljava/util/Date;
    .param p4, "domainName"    # Ljava/lang/String;
    .param p5, "activeTrustedSigners"    # Ljava/util/Map;
    .param p6, "config"    # Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lorg/jets3t/service/model/cloudfront/Distribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/model/cloudfront/DistributionConfig;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "lastModifiedDate"    # Ljava/util/Date;
    .param p4, "domainName"    # Ljava/lang/String;
    .param p5, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p6, "cnames"    # [Ljava/lang/String;
    .param p7, "comment"    # Ljava/lang/String;
    .param p8, "enabled"    # Z

    .prologue
    .line 30
    invoke-direct/range {p0 .. p8}, Lorg/jets3t/service/model/cloudfront/Distribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    return-void
.end method
