.class public Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;
.super Ljava/lang/Object;
.source "OriginAccessIdentityConfig.java"


# instance fields
.field private callerReference:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private etag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callerReference"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->callerReference:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->comment:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->etag:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->callerReference:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->comment:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getCallerReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->callerReference:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->etag:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudFrontOriginAccessIdentityConfig: callerReference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->callerReference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->etag:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", etag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/OriginAccessIdentityConfig;->etag:Ljava/lang/String;

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
    const-string v0, ""

    goto :goto_0
.end method
