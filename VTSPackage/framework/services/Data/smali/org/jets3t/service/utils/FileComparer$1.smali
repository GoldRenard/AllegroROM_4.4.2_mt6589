.class Lorg/jets3t/service/utils/FileComparer$1;
.super Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
.source "FileComparer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/utils/FileComparer;->listObjectsThreaded(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[Lorg/jets3t/service/model/StorageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/utils/FileComparer;

.field final synthetic val$allObjects:Ljava/util/List;

.field final synthetic val$bucketName:Ljava/lang/String;

.field final synthetic val$lastCommonPrefixes:Ljava/util/List;

.field final synthetic val$serviceExceptions:[Lorg/jets3t/service/ServiceException;


# direct methods
.method constructor <init>(Lorg/jets3t/service/utils/FileComparer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Lorg/jets3t/service/ServiceException;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lorg/jets3t/service/utils/FileComparer$1;->this$0:Lorg/jets3t/service/utils/FileComparer;

    iput-object p2, p0, Lorg/jets3t/service/utils/FileComparer$1;->val$bucketName:Ljava/lang/String;

    iput-object p3, p0, Lorg/jets3t/service/utils/FileComparer$1;->val$allObjects:Ljava/util/List;

    iput-object p4, p0, Lorg/jets3t/service/utils/FileComparer$1;->val$lastCommonPrefixes:Ljava/util/List;

    iput-object p5, p0, Lorg/jets3t/service/utils/FileComparer$1;->val$serviceExceptions:[Lorg/jets3t/service/ServiceException;

    invoke-direct {p0}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public event(Lorg/jets3t/service/multi/event/ListObjectsEvent;)V
    .locals 7
    .param p1, "event"    # Lorg/jets3t/service/multi/event/ListObjectsEvent;

    .prologue
    .line 489
    const/4 v2, 0x3

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 490
    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ListObjectsEvent;->getChunkList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 491
    .local v1, "chunkIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jets3t/service/StorageObjectsChunk;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 492
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/StorageObjectsChunk;

    .line 494
    .local v0, "chunk":Lorg/jets3t/service/StorageObjectsChunk;
    # getter for: Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/utils/FileComparer;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    # getter for: Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/utils/FileComparer;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jets3t/service/StorageObjectsChunk;->getObjects()[Lorg/jets3t/service/model/StorageObject;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " objects and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jets3t/service/StorageObjectsChunk;->getCommonPrefixes()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " common prefixes in bucket \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jets3t/service/utils/FileComparer$1;->val$bucketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' using prefix="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jets3t/service/StorageObjectsChunk;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delimiter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jets3t/service/StorageObjectsChunk;->getDelimiter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 502
    :cond_0
    iget-object v2, p0, Lorg/jets3t/service/utils/FileComparer$1;->val$allObjects:Ljava/util/List;

    invoke-virtual {v0}, Lorg/jets3t/service/StorageObjectsChunk;->getObjects()[Lorg/jets3t/service/model/StorageObject;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 503
    iget-object v2, p0, Lorg/jets3t/service/utils/FileComparer$1;->val$lastCommonPrefixes:Ljava/util/List;

    invoke-virtual {v0}, Lorg/jets3t/service/StorageObjectsChunk;->getCommonPrefixes()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 505
    .end local v0    # "chunk":Lorg/jets3t/service/StorageObjectsChunk;
    .end local v1    # "chunkIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jets3t/service/StorageObjectsChunk;>;"
    :cond_1
    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v2

    if-nez v2, :cond_2

    .line 506
    iget-object v2, p0, Lorg/jets3t/service/utils/FileComparer$1;->val$serviceExceptions:[Lorg/jets3t/service/ServiceException;

    const/4 v3, 0x0

    new-instance v4, Lorg/jets3t/service/ServiceException;

    const-string v5, "Failed to list all objects in bucket"

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getErrorCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    aput-object v4, v2, v3

    .line 510
    :cond_2
    return-void
.end method
