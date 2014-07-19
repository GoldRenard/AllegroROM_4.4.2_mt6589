.class public Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;
.super Ljava/lang/Object;
.source "OriginAccessIdentity.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private config:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

.field private id:Ljava/lang/String;

.field private s3CanonicalUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "s3CanonicalUserId"    # Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->id:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->s3CanonicalUserId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->comment:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->config:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    .line 31
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->id:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->s3CanonicalUserId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->comment:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "s3CanonicalUserId"    # Ljava/lang/String;
    .param p3, "config"    # Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->id:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->s3CanonicalUserId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->comment:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->config:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    .line 39
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->id:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->s3CanonicalUserId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->config:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    .line 42
    return-void
.end method


# virtual methods
.method public getConfig()Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->config:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getS3CanonicalUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->s3CanonicalUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isSummary()Z
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->getConfig()Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

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
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudFrontOriginAccessIdentity: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", s3CanonicalUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->s3CanonicalUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->isSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", comment="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->comment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", config=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentity;->config:Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
