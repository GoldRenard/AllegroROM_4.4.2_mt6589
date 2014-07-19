.class Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyObjectRunnable"
.end annotation


# instance fields
.field private destinationBucketName:Ljava/lang/String;

.field private destinationObject:Lorg/jets3t/service/model/S3Object;

.field private replaceMetadata:Z

.field private result:Ljava/lang/Object;

.field private sourceBucketName:Ljava/lang/String;

.field private sourceObjectKey:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/S3Object;Z)V
    .locals 2
    .param p2, "sourceBucketName"    # Ljava/lang/String;
    .param p3, "destinationBucketName"    # Ljava/lang/String;
    .param p4, "sourceObjectKey"    # Ljava/lang/String;
    .param p5, "destinationObject"    # Lorg/jets3t/service/model/S3Object;
    .param p6, "replaceMetadata"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2176
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 2166
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->sourceBucketName:Ljava/lang/String;

    .line 2167
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->destinationBucketName:Ljava/lang/String;

    .line 2168
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->sourceObjectKey:Ljava/lang/String;

    .line 2169
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->destinationObject:Lorg/jets3t/service/model/S3Object;

    .line 2170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->replaceMetadata:Z

    .line 2172
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->result:Ljava/lang/Object;

    .line 2177
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->sourceBucketName:Ljava/lang/String;

    .line 2178
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->destinationBucketName:Ljava/lang/String;

    .line 2179
    iput-object p4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->sourceObjectKey:Ljava/lang/String;

    .line 2180
    iput-object p5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->destinationObject:Lorg/jets3t/service/model/S3Object;

    .line 2181
    iput-boolean p6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->replaceMetadata:Z

    .line 2182
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 2201
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2195
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 2186
    :try_start_0
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->sourceBucketName:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->sourceObjectKey:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->destinationBucketName:Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->destinationObject:Lorg/jets3t/service/model/S3Object;

    iget-boolean v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->replaceMetadata:Z

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/StorageService;->copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2191
    :goto_0
    return-void

    .line 2188
    :catch_0
    move-exception v6

    .line 2189
    .local v6, "se":Lorg/jets3t/service/ServiceException;
    new-instance v0, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v0, v6}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
