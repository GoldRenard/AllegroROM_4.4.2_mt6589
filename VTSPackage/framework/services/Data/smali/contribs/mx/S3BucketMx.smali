.class public Lcontribs/mx/S3BucketMx;
.super Ljava/lang/Object;
.source "S3BucketMx.java"

# interfaces
.implements Lcontribs/mx/S3BucketMxMBean;


# static fields
.field private static final LIST:I = 0x6

.field private static final MAX:I = 0x7

.field private static final O_COPY:I = 0x5

.field private static final O_DELETE:I = 0x4

.field private static final O_GET:I = 0x1

.field private static final O_HEAD:I = 0x2

.field private static final O_PUT:I = 0x3

.field private static final TOTAL:I

.field public static final isEnabled:Z

.field private static objects:Ljava/util/Map;


# instance fields
.field private final counters:[Lcontribs/mx/LongCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "true"

    const-string v1, "jets3t.bucket.mx"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcontribs/mx/S3BucketMx;->isEnabled:Z

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcontribs/mx/S3BucketMx;->objects:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, 0x7

    new-array v1, v1, [Lcontribs/mx/LongCounter;

    iput-object v1, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    new-instance v2, Lcontribs/mx/LongCounter;

    invoke-direct {v2}, Lcontribs/mx/LongCounter;-><init>()V

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method private static getInstance(Ljava/lang/String;)Lcontribs/mx/S3BucketMx;
    .locals 6
    .param p0, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type=S3Bucket,Name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "props":Ljava/lang/String;
    sget-object v4, Lcontribs/mx/S3BucketMx;->objects:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcontribs/mx/S3BucketMx;

    .line 98
    .local v2, "object":Lcontribs/mx/S3BucketMx;
    if-nez v2, :cond_0

    .line 99
    new-instance v2, Lcontribs/mx/S3BucketMx;

    .end local v2    # "object":Lcontribs/mx/S3BucketMx;
    invoke-direct {v2}, Lcontribs/mx/S3BucketMx;-><init>()V

    .line 100
    .restart local v2    # "object":Lcontribs/mx/S3BucketMx;
    sget-object v4, Lcontribs/mx/S3BucketMx;->objects:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v3}, Lcontribs/mx/S3ServiceMx;->getObjectName(Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    .line 103
    .local v1, "name":Ljavax/management/ObjectName;
    :try_start_0
    invoke-static {v2, v1}, Lcontribs/mx/S3ServiceMx;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "name":Ljavax/management/ObjectName;
    :cond_0
    :goto_0
    return-object v2

    .line 104
    .restart local v1    # "name":Ljavax/management/ObjectName;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private increment(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->increment()V

    .line 113
    iget-object v0, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->increment()V

    .line 114
    return-void
.end method

.method public static increment(ILjava/lang/String;)V
    .locals 2
    .param p0, "type"    # I
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-boolean v1, Lcontribs/mx/S3BucketMx;->isEnabled:Z

    if-eqz v1, :cond_0

    .line 119
    invoke-static {p1}, Lcontribs/mx/S3BucketMx;->getInstance(Ljava/lang/String;)Lcontribs/mx/S3BucketMx;

    move-result-object v0

    .line 120
    .local v0, "object":Lcontribs/mx/S3BucketMx;
    invoke-direct {v0, p0}, Lcontribs/mx/S3BucketMx;->increment(I)V

    .line 122
    .end local v0    # "object":Lcontribs/mx/S3BucketMx;
    :cond_0
    invoke-static {}, Lcontribs/mx/S3ServiceMx;->getInstance()Lcontribs/mx/S3ServiceMx;

    move-result-object v1

    iget-object v1, v1, Lcontribs/mx/S3ServiceMx;->bucketCounter:Lcontribs/mx/S3BucketMx;

    invoke-direct {v1, p0}, Lcontribs/mx/S3BucketMx;->increment(I)V

    .line 123
    return-void
.end method

.method public static list(Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcontribs/mx/S3BucketMx;->increment(ILjava/lang/String;)V

    .line 147
    return-void
.end method

.method static o_copy(Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcontribs/mx/S3BucketMx;->increment(ILjava/lang/String;)V

    .line 143
    return-void
.end method

.method static o_delete(Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcontribs/mx/S3BucketMx;->increment(ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method static o_get(Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcontribs/mx/S3BucketMx;->increment(ILjava/lang/String;)V

    .line 127
    return-void
.end method

.method static o_head(Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcontribs/mx/S3BucketMx;->increment(ILjava/lang/String;)V

    .line 131
    return-void
.end method

.method static o_put(Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcontribs/mx/S3BucketMx;->increment(ILjava/lang/String;)V

    .line 135
    return-void
.end method

.method public static registerMBeans([Lorg/jets3t/service/model/StorageBucket;)V
    .locals 2
    .param p0, "buckets"    # [Lorg/jets3t/service/model/StorageBucket;

    .prologue
    .line 84
    sget-boolean v1, Lcontribs/mx/S3BucketMx;->isEnabled:Z

    if-nez v1, :cond_1

    .line 90
    :cond_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 88
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcontribs/mx/S3BucketMx;->getInstance(Ljava/lang/String;)Lcontribs/mx/S3BucketMx;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getTotalListRequests()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalObjectCopyRequests()J
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalObjectDeleteRequests()J
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalObjectGetRequests()J
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalObjectHeadRequests()J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalObjectPutRequests()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRequests()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcontribs/mx/S3BucketMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method
