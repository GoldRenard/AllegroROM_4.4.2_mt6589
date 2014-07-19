.class public abstract Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
.super Ljava/lang/Object;
.source "BaseVersionOrDeleteMarker.java"


# instance fields
.field private isLatest:Z

.field private key:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private owner:Lorg/jets3t/service/model/S3Owner;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Lorg/jets3t/service/model/S3Owner;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "versionId"    # Ljava/lang/String;
    .param p3, "isLatest"    # Z
    .param p4, "lastModified"    # Ljava/util/Date;
    .param p5, "owner"    # Lorg/jets3t/service/model/S3Owner;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->key:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->versionId:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->isLatest:Z

    .line 32
    iput-object v1, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->lastModified:Ljava/util/Date;

    .line 33
    iput-object v1, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->owner:Lorg/jets3t/service/model/S3Owner;

    .line 38
    iput-object p1, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->key:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->versionId:Ljava/lang/String;

    .line 40
    iput-boolean p3, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->isLatest:Z

    .line 41
    iput-object p4, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->lastModified:Ljava/util/Date;

    .line 42
    iput-object p5, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->owner:Lorg/jets3t/service/model/S3Owner;

    .line 43
    return-void
.end method

.method public static toVersionIds([Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;)[Ljava/lang/String;
    .locals 3
    .param p0, "items"    # [Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    .prologue
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "versionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 70
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getOwner()Lorg/jets3t/service/model/S3Owner;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->owner:Lorg/jets3t/service/model/S3Owner;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isDeleteMarker()Z
.end method

.method public isLatest()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->isLatest:Z

    return v0
.end method
