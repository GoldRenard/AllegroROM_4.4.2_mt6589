.class public Lorg/jets3t/service/model/cloudfront/CustomOrigin;
.super Lorg/jets3t/service/model/cloudfront/Origin;
.source "CustomOrigin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;
    }
.end annotation


# instance fields
.field private httpPort:I

.field private httpsPort:I

.field private originProtocolPolicy:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;)V
    .locals 1
    .param p1, "dnsName"    # Ljava/lang/String;
    .param p2, "originProtocolPolicy"    # Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/cloudfront/Origin;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->originProtocolPolicy:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    .line 49
    const/16 v0, 0x50

    iput v0, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->httpPort:I

    .line 50
    const/16 v0, 0x1bb

    iput v0, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->httpsPort:I

    .line 54
    iput-object p2, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->originProtocolPolicy:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;II)V
    .locals 1
    .param p1, "dnsName"    # Ljava/lang/String;
    .param p2, "originProtocolPolicy"    # Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;
    .param p3, "httpPort"    # I
    .param p4, "httpsPort"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/cloudfront/Origin;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->originProtocolPolicy:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    .line 49
    const/16 v0, 0x50

    iput v0, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->httpPort:I

    .line 50
    const/16 v0, 0x1bb

    iput v0, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->httpsPort:I

    .line 61
    iput-object p2, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->originProtocolPolicy:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    .line 62
    iput p3, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->httpPort:I

    .line 63
    iput p4, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->httpsPort:I

    .line 64
    return-void
.end method


# virtual methods
.method public getHttpPort()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->httpPort:I

    return v0
.end method

.method public getHttpsPort()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->httpsPort:I

    return v0
.end method

.method public getOriginProtocolPolicy()Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->originProtocolPolicy:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomOrigin: dnsName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/Origin;->getDnsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originProtocolPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->getOriginProtocolPolicy()Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->getHttpPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpsPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/cloudfront/CustomOrigin;->getHttpsPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
