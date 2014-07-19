.class Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListObjectsRunnable"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private halted:Z

.field private maxListingLength:J

.field private prefix:Ljava/lang/String;

.field private priorLastKey:Ljava/lang/String;

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "delimiter"    # Ljava/lang/String;
    .param p5, "maxListingLength"    # J
    .param p7, "priorLastKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1260
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 1250
    iput-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->result:Ljava/lang/Object;

    .line 1251
    iput-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->bucketName:Ljava/lang/String;

    .line 1252
    iput-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->prefix:Ljava/lang/String;

    .line 1253
    iput-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->delimiter:Ljava/lang/String;

    .line 1254
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->maxListingLength:J

    .line 1255
    iput-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->priorLastKey:Ljava/lang/String;

    .line 1256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->halted:Z

    .line 1261
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->bucketName:Ljava/lang/String;

    .line 1262
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->prefix:Ljava/lang/String;

    .line 1263
    iput-object p4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->delimiter:Ljava/lang/String;

    .line 1264
    iput-wide p5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->maxListingLength:J

    .line 1265
    iput-object p7, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->priorLastKey:Ljava/lang/String;

    .line 1266
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 1

    .prologue
    .line 1299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->halted:Z

    .line 1300
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 1270
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    .local v8, "allObjects":Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    .local v7, "allCommonPrefixes":Ljava/util/List;
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v0, v0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->bucketName:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->prefix:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->delimiter:Ljava/lang/String;

    iget-wide v4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->maxListingLength:J

    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->priorLastKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/StorageService;->listObjectsChunked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/jets3t/service/StorageObjectsChunk;

    move-result-object v9

    .line 1276
    .local v9, "chunk":Lorg/jets3t/service/StorageObjectsChunk;
    invoke-virtual {v9}, Lorg/jets3t/service/StorageObjectsChunk;->getPriorLastKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->priorLastKey:Ljava/lang/String;

    .line 1278
    invoke-virtual {v9}, Lorg/jets3t/service/StorageObjectsChunk;->getObjects()[Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1279
    invoke-virtual {v9}, Lorg/jets3t/service/StorageObjectsChunk;->getCommonPrefixes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1280
    iget-boolean v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->halted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->priorLastKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1282
    :cond_1
    new-instance v0, Lorg/jets3t/service/StorageObjectsChunk;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->delimiter:Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v8, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/jets3t/service/model/StorageObject;

    check-cast v3, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/jets3t/service/StorageObjectsChunk;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    .end local v7    # "allCommonPrefixes":Ljava/util/List;
    .end local v8    # "allObjects":Ljava/util/List;
    .end local v9    # "chunk":Lorg/jets3t/service/StorageObjectsChunk;
    :goto_0
    return-void

    .line 1287
    :catch_0
    move-exception v10

    .line 1288
    .local v10, "e":Lorg/jets3t/service/ServiceException;
    iput-object v10, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
