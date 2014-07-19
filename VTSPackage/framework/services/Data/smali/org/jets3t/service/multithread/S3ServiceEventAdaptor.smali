.class public Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;
.super Ljava/lang/Object;
.source "S3ServiceEventAdaptor.java"

# interfaces
.implements Lorg/jets3t/service/multithread/S3ServiceEventListener;


# instance fields
.field private t:[Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->t:[Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getErrorThrown()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->t:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/CopyObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multithread/CopyObjectsEvent;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 51
    return-void
.end method

.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/CreateBucketsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multithread/CreateBucketsEvent;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 55
    return-void
.end method

.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/CreateObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multithread/CreateObjectsEvent;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 47
    return-void
.end method

.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/DeleteObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multithread/DeleteObjectsEvent;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 59
    return-void
.end method

.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 63
    return-void
.end method

.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/DownloadObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multithread/DownloadObjectsEvent;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 83
    return-void
.end method

.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/GetObjectHeadsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multithread/GetObjectHeadsEvent;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 71
    return-void
.end method

.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/GetObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multithread/GetObjectsEvent;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 67
    return-void
.end method

.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/ListObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multithread/ListObjectsEvent;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 43
    return-void
.end method

.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/LookupACLEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multithread/LookupACLEvent;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 75
    return-void
.end method

.method public s3ServiceEventPerformed(Lorg/jets3t/service/multithread/UpdateACLEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multithread/UpdateACLEvent;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 79
    return-void
.end method

.method protected storeThrowable(Lorg/jets3t/service/multithread/ServiceEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/jets3t/service/multithread/ServiceEvent;

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->t:[Ljava/lang/Throwable;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->t:[Ljava/lang/Throwable;

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getErrorCause()Ljava/lang/Throwable;

    move-result-object v1

    aput-object v1, v0, v2

    .line 89
    :cond_0
    return-void
.end method

.method public wasErrorThrown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceEventAdaptor;->t:[Ljava/lang/Throwable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
