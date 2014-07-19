.class public Lorg/jets3t/service/S3ObjectsChunk;
.super Lorg/jets3t/service/StorageObjectsChunk;
.source "S3ObjectsChunk.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/S3Object;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .param p3, "objects"    # [Lorg/jets3t/service/model/S3Object;
    .param p4, "commonPrefixes"    # [Ljava/lang/String;
    .param p5, "priorLastKey"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/StorageObjectsChunk;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;[Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getObjects()[Lorg/jets3t/service/model/S3Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->objects:[Lorg/jets3t/service/model/StorageObject;

    invoke-static {v0}, Lorg/jets3t/service/model/S3Object;->cast([Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getObjects()[Lorg/jets3t/service/model/StorageObject;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/jets3t/service/S3ObjectsChunk;->getObjects()[Lorg/jets3t/service/model/S3Object;

    move-result-object v0

    return-object v0
.end method
