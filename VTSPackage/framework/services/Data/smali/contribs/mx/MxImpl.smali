.class public Lcontribs/mx/MxImpl;
.super Ljava/lang/Object;
.source "MxImpl.java"

# interfaces
.implements Lorg/jets3t/service/mx/MxInterface;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/jets3t/service/mx/MxDelegate;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcontribs/mx/MxImpl;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcontribs/mx/MxImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JMX instrumentation implementation started. S3BucketMx enabled? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcontribs/mx/S3BucketMx;->isEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", S3ObjectMx enabled? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcontribs/mx/S3ObjectMx;->isEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public registerS3ServiceExceptionEvent()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcontribs/mx/S3ServiceExceptionMx;->increment()V

    .line 49
    return-void
.end method

.method public registerS3ServiceExceptionEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "s3ErrorCode"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p1}, Lcontribs/mx/S3ServiceExceptionMx;->increment(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public registerS3ServiceExceptionMBean()V
    .locals 0

    .prologue
    .line 44
    invoke-static {}, Lcontribs/mx/S3ServiceExceptionMx;->registerMBean()V

    .line 45
    return-void
.end method

.method public registerS3ServiceMBean()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcontribs/mx/S3ServiceMx;->registerMBean()V

    .line 41
    return-void
.end method

.method public registerStorageBucketListEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p1}, Lcontribs/mx/S3BucketMx;->list(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public registerStorageBucketMBeans([Lorg/jets3t/service/model/StorageBucket;)V
    .locals 0
    .param p1, "buckets"    # [Lorg/jets3t/service/model/StorageBucket;

    .prologue
    .line 56
    invoke-static {p1}, Lcontribs/mx/S3BucketMx;->registerMBeans([Lorg/jets3t/service/model/StorageBucket;)V

    .line 57
    return-void
.end method

.method public registerStorageObjectCopyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1, p2}, Lcontribs/mx/S3ObjectMx;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public registerStorageObjectDeleteEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p1, p2}, Lcontribs/mx/S3ObjectMx;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public registerStorageObjectGetEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p1, p2}, Lcontribs/mx/S3ObjectMx;->get(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public registerStorageObjectHeadEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p1, p2}, Lcontribs/mx/S3ObjectMx;->head(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public registerStorageObjectMBean(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 64
    invoke-static {p1, p2}, Lcontribs/mx/S3ObjectMx;->registerMBeans(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V

    .line 65
    return-void
.end method

.method public registerStorageObjectPutEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p1, p2}, Lcontribs/mx/S3ObjectMx;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
