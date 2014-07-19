.class public Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;
.super Ljava/lang/Object;
.source "S3ServiceSimpleMulti.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private s3Service:Lorg/jets3t/service/S3Service;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/S3Service;)V
    .locals 1
    .param p1, "s3Service"    # Lorg/jets3t/service/S3Service;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    .line 60
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    .line 61
    return-void
.end method


# virtual methods
.method public copyObjects(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lorg/jets3t/service/model/S3Object;Z)[Ljava/util/Map;
    .locals 8
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "destinationBucketName"    # Ljava/lang/String;
    .param p3, "sourceObjectKeys"    # [Ljava/lang/String;
    .param p4, "destinationObjects"    # [Lorg/jets3t/service/model/S3Object;
    .param p5, "replaceMetadata"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v7, "resultsList":Ljava/util/List;
    new-instance v6, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$3;

    invoke-direct {v6, p0, v7}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$3;-><init>(Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;Ljava/util/List;)V

    .line 169
    .local v6, "adaptor":Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-direct {v0, v1, v6}, Lorg/jets3t/service/multithread/S3ServiceMulti;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/multithread/S3ServiceMulti;->copyObjects(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lorg/jets3t/service/model/S3Object;Z)Z

    .line 171
    invoke-virtual {p0, v6}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->throwError(Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;)V

    .line 172
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map;

    check-cast v0, [Ljava/util/Map;

    return-object v0
.end method

.method public createBuckets([Lorg/jets3t/service/model/S3Bucket;)[Lorg/jets3t/service/model/S3Bucket;
    .locals 4
    .param p1, "buckets"    # [Lorg/jets3t/service/model/S3Bucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v1, "bucketList":Ljava/util/List;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$1;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$1;-><init>(Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;Ljava/util/List;)V

    .line 101
    .local v0, "adaptor":Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;)V

    invoke-virtual {v2, p1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->createBuckets([Lorg/jets3t/service/model/S3Bucket;)Z

    .line 102
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->throwError(Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;)V

    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/S3Bucket;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/S3Bucket;

    check-cast v2, [Lorg/jets3t/service/model/S3Bucket;

    return-object v2
.end method

.method public deleteObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)V
    .locals 4
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "objectList":Ljava/util/List;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$4;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$4;-><init>(Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;Ljava/util/List;)V

    .line 195
    .local v0, "adaptor":Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;)V

    invoke-virtual {v2, p1, p2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->deleteObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z

    .line 196
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->throwError(Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;)V

    .line 197
    return-void
.end method

.method public deleteVersionsOfObject([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "versionIds"    # [Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 241
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->deleteVersionsOfObjectWithMFA([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public deleteVersionsOfObjectWithMFA([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "versionIds"    # [Ljava/lang/String;
    .param p2, "multiFactorSerialNumber"    # Ljava/lang/String;
    .param p3, "multiFactorAuthCode"    # Ljava/lang/String;
    .param p4, "bucketName"    # Ljava/lang/String;
    .param p5, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v6, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;

    invoke-direct {v6}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;-><init>()V

    .line 220
    .local v6, "adaptor":Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-direct {v0, v1, v6}, Lorg/jets3t/service/multithread/S3ServiceMulti;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/multithread/S3ServiceMulti;->deleteVersionsOfObjectWithMFA([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    invoke-virtual {p0, v6}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->throwError(Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;)V

    .line 224
    return-void
.end method

.method public downloadObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/multithread/DownloadPackage;)V
    .locals 3
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "downloadPackages"    # [Lorg/jets3t/service/multithread/DownloadPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;

    invoke-direct {v0}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;-><init>()V

    .line 422
    .local v0, "adaptor":Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
    new-instance v1, Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-direct {v1, v2, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;)V

    invoke-virtual {v1, p1, p2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->downloadObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/multithread/DownloadPackage;)Z

    .line 423
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->throwError(Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;)V

    .line 424
    return-void
.end method

.method public getObjectACLs(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)[Lorg/jets3t/service/model/S3Object;
    .locals 4
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v1, "objectList":Ljava/util/List;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$7;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$7;-><init>(Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;Ljava/util/List;)V

    .line 377
    .local v0, "adaptor":Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;)V

    invoke-virtual {v2, p1, p2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->getObjectACLs(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z

    .line 378
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->throwError(Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;)V

    .line 379
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/S3Object;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/S3Object;

    check-cast v2, [Lorg/jets3t/service/model/S3Object;

    return-object v2
.end method

.method public getObjects(Lorg/jets3t/service/model/S3Bucket;[Ljava/lang/String;)[Lorg/jets3t/service/model/S3Object;
    .locals 4
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objectKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 302
    array-length v2, p2

    new-array v1, v2, [Lorg/jets3t/service/model/S3Object;

    .line 303
    .local v1, "objects":[Lorg/jets3t/service/model/S3Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 304
    new-instance v2, Lorg/jets3t/service/model/S3Object;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Lorg/jets3t/service/model/S3Object;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->getObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)[Lorg/jets3t/service/model/S3Object;

    move-result-object v2

    return-object v2
.end method

.method public getObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)[Lorg/jets3t/service/model/S3Object;
    .locals 8
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 258
    array-length v6, p2

    new-array v1, v6, [Lorg/jets3t/service/multithread/DownloadPackage;

    .line 260
    .local v1, "downloadPackages":[Lorg/jets3t/service/multithread/DownloadPackage;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 262
    const-string v6, "jets3t-"

    const-string v7, ".tmp"

    invoke-static {v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 263
    .local v5, "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    .line 265
    new-instance v6, Lorg/jets3t/service/multithread/DownloadPackage;

    aget-object v7, p2, v3

    invoke-direct {v6, v7, v5}, Lorg/jets3t/service/multithread/DownloadPackage;-><init>(Lorg/jets3t/service/model/S3Object;Ljava/io/File;)V

    aput-object v6, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v5    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lorg/jets3t/service/S3ServiceException;

    const-string v7, "Unable to create temporary file to store object data"

    invoke-direct {v6, v7, v2}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 271
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v4, "objectList":Ljava/util/List;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$5;

    invoke-direct {v0, p0, v4}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$5;-><init>(Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;Ljava/util/List;)V

    .line 282
    .local v0, "adaptor":Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
    new-instance v6, Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v7, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-direct {v6, v7, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;)V

    invoke-virtual {v6, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->downloadObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/multithread/DownloadPackage;)Z

    .line 283
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->throwError(Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;)V

    .line 284
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/jets3t/service/model/S3Object;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/jets3t/service/model/S3Object;

    check-cast v6, [Lorg/jets3t/service/model/S3Object;

    return-object v6
.end method

.method public getObjectsHeads(Lorg/jets3t/service/model/S3Bucket;[Ljava/lang/String;)[Lorg/jets3t/service/model/S3Object;
    .locals 4
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objectKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v1, "objectList":Ljava/util/List;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$6;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$6;-><init>(Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;Ljava/util/List;)V

    .line 350
    .local v0, "adaptor":Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;)V

    invoke-virtual {v2, p1, p2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->getObjectsHeads(Lorg/jets3t/service/model/S3Bucket;[Ljava/lang/String;)Z

    .line 351
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->throwError(Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;)V

    .line 352
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/S3Object;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/S3Object;

    check-cast v2, [Lorg/jets3t/service/model/S3Object;

    return-object v2
.end method

.method public getObjectsHeads(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)[Lorg/jets3t/service/model/S3Object;
    .locals 3
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 321
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 322
    .local v1, "objectKeys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 323
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->getObjectsHeads(Lorg/jets3t/service/model/S3Bucket;[Ljava/lang/String;)[Lorg/jets3t/service/model/S3Object;

    move-result-object v2

    return-object v2
.end method

.method public putACLs(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)[Lorg/jets3t/service/model/S3Object;
    .locals 4
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v1, "objectList":Ljava/util/List;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$8;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$8;-><init>(Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;Ljava/util/List;)V

    .line 404
    .local v0, "adaptor":Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;)V

    invoke-virtual {v2, p1, p2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->putACLs(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z

    .line 405
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->throwError(Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;)V

    .line 406
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/S3Object;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/S3Object;

    check-cast v2, [Lorg/jets3t/service/model/S3Object;

    return-object v2
.end method

.method public putObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)[Lorg/jets3t/service/model/S3Object;
    .locals 4
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, "objectList":Ljava/util/List;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$2;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$2;-><init>(Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;Ljava/util/List;)V

    .line 128
    .local v0, "adaptor":Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;)V

    invoke-virtual {v2, p1, p2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->putObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z

    .line 129
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->throwError(Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;)V

    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/S3Object;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/S3Object;

    check-cast v2, [Lorg/jets3t/service/model/S3Object;

    return-object v2
.end method

.method protected throwError(Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;)V
    .locals 2
    .param p1, "adaptor"    # Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->wasErrorThrown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->getErrorThrown()Ljava/lang/Throwable;

    move-result-object v0

    .line 73
    .local v0, "thrown":Ljava/lang/Throwable;
    instance-of v1, v0, Lorg/jets3t/service/S3ServiceException;

    if-eqz v1, :cond_0

    .line 74
    check-cast v0, Lorg/jets3t/service/S3ServiceException;

    .end local v0    # "thrown":Ljava/lang/Throwable;
    throw v0

    .line 76
    .restart local v0    # "thrown":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    .end local v0    # "thrown":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method
