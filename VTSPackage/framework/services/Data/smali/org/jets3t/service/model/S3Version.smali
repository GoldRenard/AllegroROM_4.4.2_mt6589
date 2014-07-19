.class public Lorg/jets3t/service/model/S3Version;
.super Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
.source "S3Version.java"


# instance fields
.field private etag:Ljava/lang/String;

.field private size:J

.field private storageClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "versionId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 50
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Lorg/jets3t/service/model/S3Owner;)V

    .line 29
    iput-object v4, p0, Lorg/jets3t/service/model/S3Version;->etag:Ljava/lang/String;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jets3t/service/model/S3Version;->size:J

    .line 31
    iput-object v4, p0, Lorg/jets3t/service/model/S3Version;->storageClass:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Lorg/jets3t/service/model/S3Owner;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "versionId"    # Ljava/lang/String;
    .param p3, "isLatest"    # Z
    .param p4, "lastModified"    # Ljava/util/Date;
    .param p5, "owner"    # Lorg/jets3t/service/model/S3Owner;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Lorg/jets3t/service/model/S3Owner;)V

    .line 29
    iput-object v2, p0, Lorg/jets3t/service/model/S3Version;->etag:Ljava/lang/String;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jets3t/service/model/S3Version;->size:J

    .line 31
    iput-object v2, p0, Lorg/jets3t/service/model/S3Version;->storageClass:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Lorg/jets3t/service/model/S3Owner;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "versionId"    # Ljava/lang/String;
    .param p3, "isLatest"    # Z
    .param p4, "lastModified"    # Ljava/util/Date;
    .param p5, "owner"    # Lorg/jets3t/service/model/S3Owner;
    .param p6, "etag"    # Ljava/lang/String;
    .param p7, "size"    # J
    .param p9, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/model/S3Version;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Lorg/jets3t/service/model/S3Owner;)V

    .line 37
    iput-object p6, p0, Lorg/jets3t/service/model/S3Version;->etag:Ljava/lang/String;

    .line 38
    iput-wide p7, p0, Lorg/jets3t/service/model/S3Version;->size:J

    .line 39
    iput-object p9, p0, Lorg/jets3t/service/model/S3Version;->storageClass:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jets3t/service/model/S3Version;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/jets3t/service/model/S3Version;->size:J

    return-wide v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jets3t/service/model/S3Version;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleteMarker()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3Version [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->getVersionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLatest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->isLatest()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->getLastModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;->getOwner()Lorg/jets3t/service/model/S3Owner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/S3Version;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/S3Version;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/S3Version;->getStorageClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
