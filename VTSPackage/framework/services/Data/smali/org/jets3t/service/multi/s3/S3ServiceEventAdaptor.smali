.class public Lorg/jets3t/service/multi/s3/S3ServiceEventAdaptor;
.super Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
.source "S3ServiceEventAdaptor.java"

# interfaces
.implements Lorg/jets3t/service/multi/s3/S3ServiceEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public event(Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 55
    return-void
.end method

.method public event(Lorg/jets3t/service/multi/s3/MultipartStartsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 51
    return-void
.end method

.method public event(Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 47
    return-void
.end method
