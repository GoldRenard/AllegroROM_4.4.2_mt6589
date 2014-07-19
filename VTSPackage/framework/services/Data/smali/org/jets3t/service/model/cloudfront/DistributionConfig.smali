.class public Lorg/jets3t/service/model/cloudfront/DistributionConfig;
.super Ljava/lang/Object;
.source "DistributionConfig.java"


# instance fields
.field private callerReference:Ljava/lang/String;

.field private cnames:[Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private defaultRootObject:Ljava/lang/String;

.field private enabled:Z

.field private etag:Ljava/lang/String;

.field private loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

.field private origin:Lorg/jets3t/service/model/cloudfront/Origin;

.field private requiredProtocols:[Ljava/lang/String;

.field private trustedSignerAwsAccountNumbers:[Ljava/lang/String;

.field private trustedSignerSelf:Z


# direct methods
.method public constructor <init>(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;)V
    .locals 11
    .param p1, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p2, "callerReference"    # Ljava/lang/String;
    .param p3, "cnames"    # [Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .param p6, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    .prologue
    .line 60
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;-><init>(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "origin"    # Lorg/jets3t/service/model/cloudfront/Origin;
    .param p2, "callerReference"    # Ljava/lang/String;
    .param p3, "cnames"    # [Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .param p6, "loggingStatus"    # Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .param p7, "trustedSignerSelf"    # Z
    .param p8, "trustedSignerAwsAccountNumbers"    # [Ljava/lang/String;
    .param p9, "requiredProtocols"    # [Ljava/lang/String;
    .param p10, "defaultRootObject"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 26
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->callerReference:Ljava/lang/String;

    .line 27
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->cnames:[Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->comment:Ljava/lang/String;

    .line 29
    iput-boolean v2, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->enabled:Z

    .line 30
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->etag:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    .line 33
    iput-boolean v2, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->trustedSignerSelf:Z

    .line 34
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->trustedSignerAwsAccountNumbers:[Ljava/lang/String;

    .line 35
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->requiredProtocols:[Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->defaultRootObject:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    .line 45
    iput-object p2, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->callerReference:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->cnames:[Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->comment:Ljava/lang/String;

    .line 48
    iput-boolean p5, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->enabled:Z

    .line 49
    iput-object p6, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    .line 50
    iput-boolean p7, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->trustedSignerSelf:Z

    .line 51
    iput-object p8, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->trustedSignerAwsAccountNumbers:[Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->requiredProtocols:[Ljava/lang/String;

    .line 53
    iput-object p10, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->defaultRootObject:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getCNAMEs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->cnames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCallerReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->callerReference:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultRootObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->defaultRootObject:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggingStatus()Lorg/jets3t/service/model/cloudfront/LoggingStatus;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    return-object v0
.end method

.method public getOrigin()Lorg/jets3t/service/model/cloudfront/Origin;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    return-object v0
.end method

.method public getRequiredProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->requiredProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method public getTrustedSignerAwsAccountNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->trustedSignerAwsAccountNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public hasTrustedSignerAwsAccountNumbers()Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getTrustedSignerAwsAccountNumbers()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getTrustedSignerAwsAccountNumbers()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->enabled:Z

    return v0
.end method

.method public isHttpsProtocolRequired()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->requiredProtocols:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->requiredProtocols:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, "https"

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->requiredProtocols:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getOrigin()Lorg/jets3t/service/model/cloudfront/Origin;

    move-result-object v0

    instance-of v0, v0, Lorg/jets3t/service/model/cloudfront/S3Origin;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getOrigin()Lorg/jets3t/service/model/cloudfront/Origin;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/cloudfront/S3Origin;

    invoke-virtual {v0}, Lorg/jets3t/service/model/cloudfront/S3Origin;->getOriginAccessIdentity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamingDistributionConfig()Z
    .locals 1

    .prologue
    .line 123
    instance-of v0, p0, Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;

    return v0
.end method

.method public isTrustedSignerSelf()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->trustedSignerSelf:Z

    return v0
.end method

.method public isUrlSigningRequired()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->isTrustedSignerSelf()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->hasTrustedSignerAwsAccountNumbers()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->etag:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setHttpsProtocolRequired(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 142
    if-eqz p1, :cond_0

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "https"

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->requiredProtocols:[Ljava/lang/String;

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->requiredProtocols:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setRequiredProtocols([Ljava/lang/String;)V
    .locals 0
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->requiredProtocols:[Ljava/lang/String;

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->isStreamingDistributionConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StreamingDistributionConfig"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->origin:Lorg/jets3t/service/model/cloudfront/Origin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callerReference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->callerReference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Private:originAccessIdentity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getOrigin()Lorg/jets3t/service/model/cloudfront/Origin;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/cloudfront/S3Origin;

    invoke-virtual {v0}, Lorg/jets3t/service/model/cloudfront/S3Origin;->getOriginAccessIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->isUrlSigningRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TrustedSigners:self="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->isTrustedSignerSelf()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->hasTrustedSignerAwsAccountNumbers()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":awsAccountNumbers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getTrustedSignerAwsAccountNumbers()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->etag:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", etag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->etag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getRequiredProtocols()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getRequiredProtocols()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_7

    :cond_0
    const-string v0, ""

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CNAMEs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->cnames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DefaultRootObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->defaultRootObject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "DistributionConfig"

    goto/16 :goto_0

    :cond_2
    const-string v0, ", Public"

    goto/16 :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v0, ""

    goto :goto_3

    :cond_5
    const-string v0, ""

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", LoggingStatus: bucket="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    invoke-virtual {v2}, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->getBucket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", prefix="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->loggingStatus:Lorg/jets3t/service/model/cloudfront/LoggingStatus;

    invoke-virtual {v2}, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RequiredProtocols="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;->getRequiredProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
