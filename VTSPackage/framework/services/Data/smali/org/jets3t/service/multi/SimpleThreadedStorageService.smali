.class public Lorg/jets3t/service/multi/SimpleThreadedStorageService;
.super Ljava/lang/Object;
.source "SimpleThreadedStorageService.java"


# instance fields
.field private service:Lorg/jets3t/service/StorageService;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/StorageService;)V
    .locals 1
    .param p1, "service"    # Lorg/jets3t/service/StorageService;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->service:Lorg/jets3t/service/StorageService;

    .line 65
    iput-object p1, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->service:Lorg/jets3t/service/StorageService;

    .line 66
    return-void
.end method


# virtual methods
.method public copyObjects(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;Z)[Ljava/util/Map;
    .locals 8
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "destinationBucketName"    # Ljava/lang/String;
    .param p3, "sourceObjectKeys"    # [Ljava/lang/String;
    .param p4, "destinationObjects"    # [Lorg/jets3t/service/model/StorageObject;
    .param p5, "replaceMetadata"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v7, "resultsList":Ljava/util/List;
    new-instance v6, Lorg/jets3t/service/multi/SimpleThreadedStorageService$3;

    invoke-direct {v6, p0, v7}, Lorg/jets3t/service/multi/SimpleThreadedStorageService$3;-><init>(Lorg/jets3t/service/multi/SimpleThreadedStorageService;Ljava/util/List;)V

    .line 176
    .local v6, "adaptor":Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->service:Lorg/jets3t/service/StorageService;

    invoke-direct {v0, v1, v6}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/multi/ThreadedStorageService;->copyObjects(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;Z)Z

    .line 178
    invoke-virtual {p0, v6}, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->throwError(Lorg/jets3t/service/multi/StorageServiceEventAdaptor;)V

    .line 179
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map;

    check-cast v0, [Ljava/util/Map;

    return-object v0
.end method

.method public createBuckets([Ljava/lang/String;)[Lorg/jets3t/service/model/StorageBucket;
    .locals 4
    .param p1, "bucketNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "bucketList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageBucket;>;"
    new-instance v0, Lorg/jets3t/service/multi/SimpleThreadedStorageService$1;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multi/SimpleThreadedStorageService$1;-><init>(Lorg/jets3t/service/multi/SimpleThreadedStorageService;Ljava/util/List;)V

    .line 106
    .local v0, "adaptor":Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v3, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->service:Lorg/jets3t/service/StorageService;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    invoke-virtual {v2, p1}, Lorg/jets3t/service/multi/ThreadedStorageService;->createBuckets([Ljava/lang/String;)Z

    .line 107
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->throwError(Lorg/jets3t/service/multi/StorageServiceEventAdaptor;)V

    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/StorageBucket;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/StorageBucket;

    return-object v2
.end method

.method public deleteObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "objectList":Ljava/util/List;
    new-instance v0, Lorg/jets3t/service/multi/SimpleThreadedStorageService$4;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multi/SimpleThreadedStorageService$4;-><init>(Lorg/jets3t/service/multi/SimpleThreadedStorageService;Ljava/util/List;)V

    .line 202
    .local v0, "adaptor":Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v3, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->service:Lorg/jets3t/service/StorageService;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    invoke-virtual {v2, p1, p2}, Lorg/jets3t/service/multi/ThreadedStorageService;->deleteObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z

    .line 203
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->throwError(Lorg/jets3t/service/multi/StorageServiceEventAdaptor;)V

    .line 204
    return-void
.end method

.method public downloadObjects(Ljava/lang/String;[Lorg/jets3t/service/multi/DownloadPackage;)V
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "downloadPackages"    # [Lorg/jets3t/service/multi/DownloadPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;

    invoke-direct {v0}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;-><init>()V

    .line 385
    .local v0, "adaptor":Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
    new-instance v1, Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v2, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->service:Lorg/jets3t/service/StorageService;

    invoke-direct {v1, v2, v0}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    invoke-virtual {v1, p1, p2}, Lorg/jets3t/service/multi/ThreadedStorageService;->downloadObjects(Ljava/lang/String;[Lorg/jets3t/service/multi/DownloadPackage;)Z

    .line 386
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->throwError(Lorg/jets3t/service/multi/StorageServiceEventAdaptor;)V

    .line 387
    return-void
.end method

.method public getObjectACLs(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/StorageObject;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v1, "objectList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    new-instance v0, Lorg/jets3t/service/multi/SimpleThreadedStorageService$7;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multi/SimpleThreadedStorageService$7;-><init>(Lorg/jets3t/service/multi/SimpleThreadedStorageService;Ljava/util/List;)V

    .line 340
    .local v0, "adaptor":Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v3, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->service:Lorg/jets3t/service/StorageService;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    invoke-virtual {v2, p1, p2}, Lorg/jets3t/service/multi/ThreadedStorageService;->getObjectACLs(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z

    .line 341
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->throwError(Lorg/jets3t/service/multi/StorageServiceEventAdaptor;)V

    .line 342
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/StorageObject;

    return-object v2
.end method

.method public getObjects(Ljava/lang/String;[Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 265
    array-length v2, p2

    new-array v1, v2, [Lorg/jets3t/service/model/StorageObject;

    .line 266
    .local v1, "objects":[Lorg/jets3t/service/model/StorageObject;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 267
    new-instance v2, Lorg/jets3t/service/model/StorageObject;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->getObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v2

    return-object v2
.end method

.method public getObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/StorageObject;
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 220
    array-length v6, p2

    new-array v1, v6, [Lorg/jets3t/service/multi/DownloadPackage;

    .line 222
    .local v1, "downloadPackages":[Lorg/jets3t/service/multi/DownloadPackage;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 224
    const-string v6, "jets3t-"

    const-string v7, ".tmp"

    invoke-static {v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 225
    .local v5, "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    .line 227
    new-instance v6, Lorg/jets3t/service/multi/DownloadPackage;

    aget-object v7, p2, v3

    invoke-direct {v6, v7, v5}, Lorg/jets3t/service/multi/DownloadPackage;-><init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/File;)V

    aput-object v6, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    .end local v5    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lorg/jets3t/service/ServiceException;

    const-string v7, "Unable to create temporary file to store object data"

    invoke-direct {v6, v7, v2}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 233
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v4, "objectList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    new-instance v0, Lorg/jets3t/service/multi/SimpleThreadedStorageService$5;

    invoke-direct {v0, p0, v4}, Lorg/jets3t/service/multi/SimpleThreadedStorageService$5;-><init>(Lorg/jets3t/service/multi/SimpleThreadedStorageService;Ljava/util/List;)V

    .line 243
    .local v0, "adaptor":Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
    new-instance v6, Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v7, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->service:Lorg/jets3t/service/StorageService;

    invoke-direct {v6, v7, v0}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    invoke-virtual {v6, p1, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->downloadObjects(Ljava/lang/String;[Lorg/jets3t/service/multi/DownloadPackage;)Z

    .line 244
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->throwError(Lorg/jets3t/service/multi/StorageServiceEventAdaptor;)V

    .line 245
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/jets3t/service/model/StorageObject;

    return-object v6
.end method

.method public getObjectsHeads(Ljava/lang/String;[Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v1, "objectList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    new-instance v0, Lorg/jets3t/service/multi/SimpleThreadedStorageService$6;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multi/SimpleThreadedStorageService$6;-><init>(Lorg/jets3t/service/multi/SimpleThreadedStorageService;Ljava/util/List;)V

    .line 313
    .local v0, "adaptor":Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v3, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->service:Lorg/jets3t/service/StorageService;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    invoke-virtual {v2, p1, p2}, Lorg/jets3t/service/multi/ThreadedStorageService;->getObjectsHeads(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 314
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->throwError(Lorg/jets3t/service/multi/StorageServiceEventAdaptor;)V

    .line 315
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/StorageObject;

    return-object v2
.end method

.method public getObjectsHeads(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/StorageObject;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 284
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 285
    .local v1, "objectKeys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 286
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->getObjectsHeads(Ljava/lang/String;[Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v2

    return-object v2
.end method

.method public putACLs(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/StorageObject;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v1, "objectList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    new-instance v0, Lorg/jets3t/service/multi/SimpleThreadedStorageService$8;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multi/SimpleThreadedStorageService$8;-><init>(Lorg/jets3t/service/multi/SimpleThreadedStorageService;Ljava/util/List;)V

    .line 367
    .local v0, "adaptor":Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v3, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->service:Lorg/jets3t/service/StorageService;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    invoke-virtual {v2, p1, p2}, Lorg/jets3t/service/multi/ThreadedStorageService;->putACLs(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z

    .line 368
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->throwError(Lorg/jets3t/service/multi/StorageServiceEventAdaptor;)V

    .line 369
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/StorageObject;

    return-object v2
.end method

.method public putObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/StorageObject;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, "objectList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    new-instance v0, Lorg/jets3t/service/multi/SimpleThreadedStorageService$2;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multi/SimpleThreadedStorageService$2;-><init>(Lorg/jets3t/service/multi/SimpleThreadedStorageService;Ljava/util/List;)V

    .line 135
    .local v0, "adaptor":Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
    new-instance v2, Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v3, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->service:Lorg/jets3t/service/StorageService;

    invoke-direct {v2, v3, v0}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    invoke-virtual {v2, p1, p2}, Lorg/jets3t/service/multi/ThreadedStorageService;->putObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z

    .line 136
    invoke-virtual {p0, v0}, Lorg/jets3t/service/multi/SimpleThreadedStorageService;->throwError(Lorg/jets3t/service/multi/StorageServiceEventAdaptor;)V

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/StorageObject;

    return-object v2
.end method

.method protected throwError(Lorg/jets3t/service/multi/StorageServiceEventAdaptor;)V
    .locals 2
    .param p1, "adaptor"    # Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->wasErrorThrown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->getErrorThrown()Ljava/lang/Throwable;

    move-result-object v0

    .line 78
    .local v0, "thrown":Ljava/lang/Throwable;
    instance-of v1, v0, Lorg/jets3t/service/ServiceException;

    if-eqz v1, :cond_0

    .line 79
    check-cast v0, Lorg/jets3t/service/ServiceException;

    .end local v0    # "thrown":Ljava/lang/Throwable;
    throw v0

    .line 81
    .restart local v0    # "thrown":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lorg/jets3t/service/ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    .end local v0    # "thrown":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method
