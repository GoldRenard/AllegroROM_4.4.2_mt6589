.class public Lorg/jets3t/service/model/cloudfront/Distribution;
.super Ljava/lang/Object;
.source "Distribution.java"


# instance fields
.field private activeTrustedSigners:Ljava/util/Map;

.field private cnames:[Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private config:Lorg/jets3t/service/model/cloudfront/DistributionConfig;

.field private domainName:Ljava/lang/String;

.field private enabled:Z

.field private id:Ljava/lang/String;

.field private lastModifiedTime:Ljava/util/Date;

.field private origin:Lorg/jets3t/service/model/cloudfront/Origin;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/model/cloudfront/DistributionConfig;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "lastModifiedDate"    # Ljava/util/Date;
    .param p4, "domainName"    # Ljava/lang/String;
    .param p5, "activeTrustedSigners"    # Ljava/util/Map;
    .param p6, "config"    # Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->id:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->status:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->lastModifiedTime:Ljava/util/Date;

    .line 32
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->domainName:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->activeTrustedSigners:Ljava/util/Map;

    .line 34
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 35
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->cnames:[Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->comment:Ljava/lang/String;

    .line 37
    iput-boolean v2, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->enabled:Z

    .line 38
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->config:Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    .line 57
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->id:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->status:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->lastModifiedTime:Ljava/util/Date;

    .line 60
    iput-object p4, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->domainName:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->activeTrustedSigners:Ljava/util/Map;

    .line 62
    iput-object p6, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->config:Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "lastModifiedDate"    # Ljava/util/Date;
    .param p4, "domainName"    # Ljava/lang/String;
    .param p5, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p6, "cnames"    # [Ljava/lang/String;
    .param p7, "comment"    # Ljava/lang/String;
    .param p8, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->id:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->status:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->lastModifiedTime:Ljava/util/Date;

    .line 32
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->domainName:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->activeTrustedSigners:Ljava/util/Map;

    .line 34
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 35
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->cnames:[Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->comment:Ljava/lang/String;

    .line 37
    iput-boolean v2, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->enabled:Z

    .line 38
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->config:Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    .line 44
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->id:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->status:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->lastModifiedTime:Ljava/util/Date;

    .line 47
    iput-object p4, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->domainName:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 49
    iput-object p6, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->cnames:[Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->comment:Ljava/lang/String;

    .line 51
    iput-boolean p8, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->enabled:Z

    .line 52
    return-void
.end method


# virtual methods
.method public getActiveTrustedSigners()Ljava/util/Map;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->activeTrustedSigners:Ljava/util/Map;

    return-object v0
.end method

.method public getCNAMEs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->cnames:[Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lorg/jets3t/service/model/cloudfront/DistributionConfig;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->config:Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->lastModifiedTime:Ljava/util/Date;

    return-object v0
.end method

.method public getOrigin()Lorg/jets3t/service/model/cloudfront/Origin;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isDeployed()Z
    .locals 2

    .prologue
    .line 109
    const-string v0, "Deployed"

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/Distribution;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->enabled:Z

    return v0
.end method

.method public isStreamingDistribution()Z
    .locals 1

    .prologue
    .line 117
    instance-of v0, p0, Lorg/jets3t/service/model/cloudfront/StreamingDistribution;

    return v0
.end method

.method public isSummary()Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/Distribution;->getConfig()Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/Distribution;->isStreamingDistribution()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CloudFrontStreamingDistribution"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", domainName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeTrustedSigners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->activeTrustedSigners:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastModifiedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->lastModifiedTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/Distribution;->isSummary()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", origin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", comment="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->comment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->enabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", CNAMEs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->cnames:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "CloudFrontDistribution"

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", config=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/Distribution;->config:Lorg/jets3t/service/model/cloudfront/DistributionConfig;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
