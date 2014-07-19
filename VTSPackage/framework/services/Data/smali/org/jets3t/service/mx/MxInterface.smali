.class public interface abstract Lorg/jets3t/service/mx/MxInterface;
.super Ljava/lang/Object;
.source "MxInterface.java"


# virtual methods
.method public abstract registerS3ServiceExceptionEvent()V
.end method

.method public abstract registerS3ServiceExceptionEvent(Ljava/lang/String;)V
.end method

.method public abstract registerS3ServiceExceptionMBean()V
.end method

.method public abstract registerS3ServiceMBean()V
.end method

.method public abstract registerStorageBucketListEvent(Ljava/lang/String;)V
.end method

.method public abstract registerStorageBucketMBeans([Lorg/jets3t/service/model/StorageBucket;)V
.end method

.method public abstract registerStorageObjectCopyEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerStorageObjectDeleteEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerStorageObjectGetEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerStorageObjectHeadEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerStorageObjectMBean(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V
.end method

.method public abstract registerStorageObjectPutEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method
