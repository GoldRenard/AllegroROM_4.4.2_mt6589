.class Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$1;
.super Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
.source "S3ServiceSimpleMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;->createBuckets([Lorg/jets3t/service/model/S3Bucket;)[Lorg/jets3t/service/model/S3Bucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;

.field final synthetic val$bucketList:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$1;->this$0:Lorg/jets3t/service/multithread/S3ServiceSimpleMulti;

    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$1;->val$bucketList:Ljava/util/List;

    invoke-direct {p0}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/CreateBucketsEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/jets3t/service/multithread/CreateBucketsEvent;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/CreateBucketsEvent;)V

    .line 96
    const/4 v0, 0x3

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceSimpleMulti$1;->val$bucketList:Ljava/util/List;

    invoke-virtual {p1}, Lorg/jets3t/service/multithread/CreateBucketsEvent;->getCreatedBuckets()[Lorg/jets3t/service/model/S3Bucket;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_0
    return-void
.end method
