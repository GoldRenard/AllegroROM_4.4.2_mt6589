.class public Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
.super Ljava/lang/Object;
.source "StorageServiceEventAdaptor.java"

# interfaces
.implements Lorg/jets3t/service/multi/StorageServiceEventListener;


# instance fields
.field private final t:[Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->t:[Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public event(Lorg/jets3t/service/multi/event/CopyObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 64
    return-void
.end method

.method public event(Lorg/jets3t/service/multi/event/CreateBucketsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/event/CreateBucketsEvent;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 68
    return-void
.end method

.method public event(Lorg/jets3t/service/multi/event/CreateObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/event/CreateObjectsEvent;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 60
    return-void
.end method

.method public event(Lorg/jets3t/service/multi/event/DeleteObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/event/DeleteObjectsEvent;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 72
    return-void
.end method

.method public event(Lorg/jets3t/service/multi/event/DownloadObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/event/DownloadObjectsEvent;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 92
    return-void
.end method

.method public event(Lorg/jets3t/service/multi/event/GetObjectHeadsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/event/GetObjectHeadsEvent;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 80
    return-void
.end method

.method public event(Lorg/jets3t/service/multi/event/GetObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/event/GetObjectsEvent;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 76
    return-void
.end method

.method public event(Lorg/jets3t/service/multi/event/ListObjectsEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/event/ListObjectsEvent;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 56
    return-void
.end method

.method public event(Lorg/jets3t/service/multi/event/LookupACLEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/event/LookupACLEvent;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 84
    return-void
.end method

.method public event(Lorg/jets3t/service/multi/event/UpdateACLEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/jets3t/service/multi/event/UpdateACLEvent;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 88
    return-void
.end method

.method public getErrorThrown()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->t:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected storeThrowable(Lorg/jets3t/service/multi/event/ServiceEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/jets3t/service/multi/event/ServiceEvent;

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->t:[Ljava/lang/Throwable;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->t:[Ljava/lang/Throwable;

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getErrorCause()Ljava/lang/Throwable;

    move-result-object v1

    aput-object v1, v0, v2

    .line 98
    :cond_0
    return-void
.end method

.method public throwErrorIfPresent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->wasErrorThrown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->getErrorThrown()Ljava/lang/Throwable;

    move-result-object v0

    .line 123
    .local v0, "thrown":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Ljava/lang/Exception;

    .end local v0    # "thrown":Ljava/lang/Throwable;
    throw v0

    .line 126
    .restart local v0    # "thrown":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 129
    .end local v0    # "thrown":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public wasErrorThrown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->t:[Ljava/lang/Throwable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
