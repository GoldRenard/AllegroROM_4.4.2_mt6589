.class public Lorg/jets3t/service/model/cloudfront/LoggingStatus;
.super Ljava/lang/Object;
.source "LoggingStatus.java"


# instance fields
.field private bucket:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->bucket:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->prefix:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->prefix:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucket"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->bucket:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->prefix:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->bucket:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->prefix:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getShortBucketName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->bucket:Ljava/lang/String;

    const-string v1, ".s3.amazonaws.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->bucket:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->bucket:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".s3.amazonaws.com"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->bucket:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucket"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->bucket:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/LoggingStatus;->prefix:Ljava/lang/String;

    .line 63
    return-void
.end method
