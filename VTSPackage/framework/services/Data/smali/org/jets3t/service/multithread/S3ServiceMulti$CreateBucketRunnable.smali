.class Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateBucketRunnable"
.end annotation


# instance fields
.field private bucket:Lorg/jets3t/service/model/S3Bucket;

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;)V
    .locals 1
    .param p2, "bucket"    # Lorg/jets3t/service/model/S3Bucket;

    .prologue
    const/4 v0, 0x0

    .line 2030
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 2027
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 2028
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;->result:Ljava/lang/Object;

    .line 2031
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 2032
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 2050
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2044
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 2036
    :try_start_0
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    invoke-virtual {v1, v2}, Lorg/jets3t/service/S3Service;->createBucket(Lorg/jets3t/service/model/S3Bucket;)Lorg/jets3t/service/model/S3Bucket;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jets3t/service/S3ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2040
    :goto_0
    return-void

    .line 2037
    :catch_0
    move-exception v0

    .line 2038
    .local v0, "e":Lorg/jets3t/service/S3ServiceException;
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
