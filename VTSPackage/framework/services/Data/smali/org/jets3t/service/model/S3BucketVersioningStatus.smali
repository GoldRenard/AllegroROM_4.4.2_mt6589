.class public Lorg/jets3t/service/model/S3BucketVersioningStatus;
.super Ljava/lang/Object;
.source "S3BucketVersioningStatus.java"


# instance fields
.field private multiFactorAuthDeleteEnabled:Z

.field private versioningEnabled:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "versioningEnabled"    # Z
    .param p2, "multiFactorAuthEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lorg/jets3t/service/model/S3BucketVersioningStatus;->versioningEnabled:Z

    .line 28
    iput-boolean v0, p0, Lorg/jets3t/service/model/S3BucketVersioningStatus;->multiFactorAuthDeleteEnabled:Z

    .line 33
    iput-boolean p1, p0, Lorg/jets3t/service/model/S3BucketVersioningStatus;->versioningEnabled:Z

    .line 34
    iput-boolean p2, p0, Lorg/jets3t/service/model/S3BucketVersioningStatus;->multiFactorAuthDeleteEnabled:Z

    .line 35
    return-void
.end method


# virtual methods
.method public isMultiFactorAuthDeleteRequired()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/jets3t/service/model/S3BucketVersioningStatus;->multiFactorAuthDeleteEnabled:Z

    return v0
.end method

.method public isVersioningEnabled()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/jets3t/service/model/S3BucketVersioningStatus;->versioningEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VersioningStatus enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/S3BucketVersioningStatus;->isVersioningEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", multiFactorAuthDeleteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/S3BucketVersioningStatus;->isMultiFactorAuthDeleteRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
