.class public interface abstract Lorg/jets3t/service/multi/s3/S3ServiceEventListener;
.super Ljava/lang/Object;
.source "S3ServiceEventListener.java"

# interfaces
.implements Lorg/jets3t/service/multi/StorageServiceEventListener;


# virtual methods
.method public abstract event(Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;)V
.end method

.method public abstract event(Lorg/jets3t/service/multi/s3/MultipartStartsEvent;)V
.end method

.method public abstract event(Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;)V
.end method
