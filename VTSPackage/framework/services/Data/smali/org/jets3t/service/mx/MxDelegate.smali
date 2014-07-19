.class public Lorg/jets3t/service/mx/MxDelegate;
.super Ljava/lang/Object;
.source "MxDelegate.java"

# interfaces
.implements Lorg/jets3t/service/mx/MxInterface;


# static fields
.field private static instance:Lorg/jets3t/service/mx/MxDelegate;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private handler:Lorg/jets3t/service/mx/MxInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/jets3t/service/mx/MxDelegate;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/mx/MxDelegate;->log:Lorg/apache/commons/logging/Log;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lorg/jets3t/service/mx/MxDelegate;->instance:Lorg/jets3t/service/mx/MxDelegate;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    .line 42
    return-void
.end method

.method public static getInstance()Lorg/jets3t/service/mx/MxDelegate;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/jets3t/service/mx/MxDelegate;->instance:Lorg/jets3t/service/mx/MxDelegate;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/jets3t/service/mx/MxDelegate;

    invoke-direct {v0}, Lorg/jets3t/service/mx/MxDelegate;-><init>()V

    sput-object v0, Lorg/jets3t/service/mx/MxDelegate;->instance:Lorg/jets3t/service/mx/MxDelegate;

    .line 38
    :cond_0
    sget-object v0, Lorg/jets3t/service/mx/MxDelegate;->instance:Lorg/jets3t/service/mx/MxDelegate;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 66
    const-string v2, "com.sun.management.jmxremote"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "jets3t.mx"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 69
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    .line 88
    :goto_0
    return-void

    .line 75
    :cond_0
    :try_start_0
    const-string v2, "contribs.mx.MxImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 76
    .local v1, "impl":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jets3t/service/mx/MxInterface;

    iput-object v2, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 77
    .end local v1    # "impl":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lorg/jets3t/service/mx/MxDelegate;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "JMX instrumentation package \'contribs.mx\' could not be found,  instrumentation will not available"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 83
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/jets3t/service/mx/MxDelegate;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "JMX instrumentation implementation in package \'contribs.mx\'  could not be loaded"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isJmxDelegationActive()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerS3ServiceExceptionEvent()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0}, Lorg/jets3t/service/mx/MxInterface;->registerS3ServiceExceptionEvent()V

    .line 114
    :cond_0
    return-void
.end method

.method public registerS3ServiceExceptionEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "s3ErrorCode"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0, p1}, Lorg/jets3t/service/mx/MxInterface;->registerS3ServiceExceptionEvent(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public registerS3ServiceExceptionMBean()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0}, Lorg/jets3t/service/mx/MxInterface;->registerS3ServiceExceptionMBean()V

    .line 108
    :cond_0
    return-void
.end method

.method public registerS3ServiceMBean()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0}, Lorg/jets3t/service/mx/MxInterface;->registerS3ServiceMBean()V

    .line 102
    :cond_0
    return-void
.end method

.method public registerStorageBucketListEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0, p1}, Lorg/jets3t/service/mx/MxInterface;->registerStorageBucketListEvent(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public registerStorageBucketMBeans([Lorg/jets3t/service/model/StorageBucket;)V
    .locals 1
    .param p1, "buckets"    # [Lorg/jets3t/service/model/StorageBucket;

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0, p1}, Lorg/jets3t/service/mx/MxInterface;->registerStorageBucketMBeans([Lorg/jets3t/service/model/StorageBucket;)V

    .line 126
    :cond_0
    return-void
.end method

.method public registerStorageObjectCopyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0, p1, p2}, Lorg/jets3t/service/mx/MxInterface;->registerStorageObjectCopyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public registerStorageObjectDeleteEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0, p1, p2}, Lorg/jets3t/service/mx/MxInterface;->registerStorageObjectDeleteEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public registerStorageObjectGetEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0, p1, p2}, Lorg/jets3t/service/mx/MxInterface;->registerStorageObjectGetEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method public registerStorageObjectHeadEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0, p1, p2}, Lorg/jets3t/service/mx/MxInterface;->registerStorageObjectHeadEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method public registerStorageObjectMBean(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0, p1, p2}, Lorg/jets3t/service/mx/MxInterface;->registerStorageObjectMBean(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V

    .line 138
    :cond_0
    return-void
.end method

.method public registerStorageObjectPutEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/jets3t/service/mx/MxDelegate;->handler:Lorg/jets3t/service/mx/MxInterface;

    invoke-interface {v0, p1, p2}, Lorg/jets3t/service/mx/MxInterface;->registerStorageObjectPutEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
